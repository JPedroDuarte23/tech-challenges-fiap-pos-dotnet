﻿using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.DataProtection.KeyManagement;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System.Diagnostics.CodeAnalysis;
using System.Text;
using System.Text.Json;

namespace FiapCloudGames.Infrastructure.Configuration;

[ExcludeFromCodeCoverage]
public static class JwtBearerConfiguration
{
    public static void ConfigureJwtBearer(this IServiceCollection services, IConfiguration configuration, string jwtSigningKey)
    {
        var issuer = configuration["Jwt:Issuer"] ?? "FiapCloudGamesApi";
        var audience = configuration["Jwt:Audience"] ?? "FiapCloudGamesUsers";
        var keyBytes = Convert.FromBase64String(jwtSigningKey);

        System.Console.WriteLine("CHAVE JWT: " + jwtSigningKey);
        System.Console.WriteLine("CHAVE JWT EM BYTES: " + keyBytes);

        services
            .AddAuthentication("Bearer")
            .AddJwtBearer("Bearer", options =>
            {

                options.RequireHttpsMetadata = false;

                options.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true, 
                    IssuerSigningKey = new SymmetricSecurityKey(keyBytes),
                    ValidateIssuer = true, 
                    ValidIssuer = issuer,
                    ValidateAudience = true,
                    ValidAudience = audience,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero 
                };

                // 👇 Eventos personalizados para 401 e 403 (manter como está)
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
