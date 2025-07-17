using System.Diagnostics.CodeAnalysis;
using System.Text;
using Azure.Identity;
using Azure.Security.KeyVault.Secrets;
using FiapCloudGames.Application.Interface;
using FiapCloudGames.Application.Interface.Repositories;
using FiapCloudGames.Application.Services;
using FiapCloudGames.Infrastructure.Configuration;
using FiapCloudGames.Infrastructure.Mappings;
using FiapCloudGames.Infrastructure.Middleware;
using FiapCloudGames.Infrastructure.Repository;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using MongoDB.Driver;
using Serilog;

[assembly: ExcludeFromCodeCoverage]

var builder = WebApplication.CreateBuilder(args);

Log.Logger = SerilogConfiguration.ConfigureSerilog();
builder.Host.UseSerilog();

string mongoConnectionString;
// O nome do banco de dados pode ser lido da configuração padrão em ambos os ambientes
string databaseName = builder.Configuration.GetSection("MongoDbSettings:DatabaseName").Value ?? "";

// --- Lógica para obter a string de conexão baseada no ambiente ---
if (!builder.Environment.IsDevelopment())
{
    Log.Information("Ambiente de Produção detectado. Tentando obter string de conexão do KeyVault. 🔐");

    // Lendo configurações do Key Vault de variáveis de ambiente (KeyVault__Url, KeyVault__MongoSecretName)
    var keyVaultUrl = builder.Configuration.GetSection("KeyVault:Url").Value;
    var secretName = builder.Configuration.GetSection("KeyVault:MongoSecretName").Value;

    // Verificações essenciais para evitar ArgumentNullException
    if (string.IsNullOrEmpty(keyVaultUrl))
    {
        Log.Fatal("KeyVault:Url (KeyVault__Url) não configurado em ambiente de produção. Impossível prosseguir.");
        throw new InvalidOperationException("A URL do KeyVault não pode ser nula em produção. Verifique as variáveis de ambiente.");
    }
    if (string.IsNullOrEmpty(secretName))
    {
        Log.Fatal("KeyVault:MongoSecretName (KeyVault__MongoSecretName) não configurado em ambiente de produção. Impossível prosseguir.");
        throw new InvalidOperationException("O nome do segredo do MongoDB no KeyVault não pode ser nulo em produção. Verifique as variáveis de ambiente.");
    }

    try
    {
        // DefaultAzureCredential: Automaticamente usa Managed Identity no Azure, ou credenciais locais.
        Log.Information("Tentando criar SecretClient para {KeyVaultUrl} e obter segredo '{SecretName}'.", keyVaultUrl, secretName);
        var secretClient = new SecretClient(new Uri(keyVaultUrl), new DefaultAzureCredential());

        // Aguarda a obtenção do segredo
        KeyVaultSecret mongoConnectionSecret = await secretClient.GetSecretAsync(secretName);
        mongoConnectionString = mongoConnectionSecret.Value;

        Log.Information("String de conexão do MongoDB obtida com sucesso do KeyVault. 🎉");
    }
    catch (Azure.Identity.CredentialUnavailableException ex)
    {
        Log.Fatal(ex, "Erro de credencial Azure Identity ao acessar KeyVault. Verifique se a Managed Identity está habilitada e possui permissões 'Get' e 'List' para Secrets no KeyVault. 🛑");
        throw; // Relança o erro fatal para impedir a inicialização
    }
    catch (Azure.RequestFailedException ex)
    {
        Log.Fatal(ex, "Erro de requisição ao KeyVault. Verifique a URL do KeyVault, o nome do segredo, e a conectividade de rede (VNet/Private Endpoints). 🛑");
        throw;
    }
    catch (Exception ex)
    {
        Log.Fatal(ex, "Erro inesperado ao inicializar a conexão com o KeyVault/MongoDB em produção. 🛑");
        throw;
    }
}
else // Ambiente de Desenvolvimento (ou qualquer outro que não seja Produção)
{
    Log.Information("Ambiente de Desenvolvimento/Local detectado. Obtendo string de conexão do appsettings. 💻");
    // Em desenvolvimento, a string de conexão é lida diretamente do appsettings.Development.json (ou User Secrets)
    mongoConnectionString = builder.Configuration.GetSection("MongoDbSettings:ConnectionString").Value ?? "";

    if (string.IsNullOrEmpty(mongoConnectionString))
    {
        Log.Fatal("MongoDbSettings:ConnectionString não configurado no appsettings.Development.json ou User Secrets.");
        throw new InvalidOperationException("String de conexão do MongoDB não pode ser nula em desenvolvimento/local. Verifique a configuração.");
    }
    Log.Information("String de conexão do MongoDB obtida do appsettings. 👍");
}

builder.Services.AddSingleton<IMongoClient>(sp =>
        new MongoClient(mongoConnectionString));

    builder.Services.AddSingleton(sp =>
        sp.GetRequiredService<IMongoClient>().GetDatabase(databaseName));

builder.Services.Configure<MongoDbSettings>(
    builder.Configuration.GetSection("MongoDbSettings")
);

MongoMappings.ConfigureMappings();

builder.Services.ConfigureJwtBearer(builder.Configuration);

builder.Services.AddScoped<IAuthService, AuthService>();
builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<IGameService, GameService>();
builder.Services.AddScoped<ILibraryService, LibraryService>();
builder.Services.AddScoped<ICartService, CartService>();

builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<IGameRepository, GameRepository>();

builder.Services.AddAuthorization();

builder.Services.AddControllers();
builder.Services
    .AddControllers()
    .AddJsonOptions(options =>
    {
        options.JsonSerializerOptions.DefaultIgnoreCondition = System.Text.Json.Serialization.JsonIgnoreCondition.WhenWritingNull;
    });


builder.Services.AddEndpointsApiExplorer();

builder.Services.AddSwaggerGen(opt =>
{
    opt.SwaggerDoc("v1", new OpenApiInfo { Title = "FIAP Cloud Games", Version = "v1" });

    opt.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "Insira o token JWT no formato: Bearer {seu token}"
    });

    opt.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            Array.Empty<string>()
        }
    });
    opt.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, "FiapCloudGames.API.xml"));
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.UseMiddleware<CorrelationIdMiddleware>();
app.UseMiddleware<ExceptionHandler>();
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
