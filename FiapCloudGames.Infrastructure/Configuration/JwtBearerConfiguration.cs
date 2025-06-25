using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.Text.Json;

namespace FiapCloudGames.Infrastructure.Configuration;

public static class JwtBearerConfiguration
{
    public static void ConfigureJwtBearer(this IServiceCollection services, IConfiguration configuration)
    {
        services
            .AddAuthentication("Bearer")
            .AddJwtBearer("Bearer", options =>
            {
                options.Authority = configuration["Jwt:Authority"];
                options.Audience = configuration["Jwt:Audience"];   
                options.RequireHttpsMetadata = false;

                // 👇 Eventos personalizados para 401 e 403
                options.Events = new JwtBearerEvents
                {
                    OnChallenge = async context =>
                    {
                        context.HandleResponse();
                        context.Response.StatusCode = StatusCodes.Status401Unauthorized;
                        context.Response.ContentType = "application/json";

                        var traceId = context.HttpContext.Items["X-Correlation-ID"]?.ToString() ?? context.HttpContext.TraceIdentifier;
                        var response = new
                        {
                            error = "Unauthorized",
                            statusCode = 401,
                            message = "Token ausente, inválido ou expirado.",
                            traceId
                        };

                        var json = JsonSerializer.Serialize(response, new JsonSerializerOptions
                        {
                            PropertyNamingPolicy = JsonNamingPolicy.CamelCase
                        });

                        await context.Response.WriteAsync(json);
                    },
                    OnForbidden = async context =>
                    {
                        context.Response.StatusCode = StatusCodes.Status403Forbidden;
                        context.Response.ContentType = "application/json";

                        var traceId = context.HttpContext.Items["X-Correlation-ID"]?.ToString() ?? context.HttpContext.TraceIdentifier;
                        var response = new
                        {
                            error = "Forbidden",
                            statusCode = 403,
                            message = "Você não tem permissão para acessar este recurso.",
                            traceId
                        };

                        var json = JsonSerializer.Serialize(response, new JsonSerializerOptions
                        {
                            PropertyNamingPolicy = JsonNamingPolicy.CamelCase
                        });

                        await context.Response.WriteAsync(json);
                    }
                };
            });
    }
}