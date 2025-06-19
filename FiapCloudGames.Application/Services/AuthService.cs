using System.Collections.Generic;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using FiapCloudGames.Application.DTOs.Authenticate;
using FiapCloudGames.Application.DTOs.User;
using FiapCloudGames.Application.Interface;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Domain.Enums;
using FiapCloudGames.Infrastructure.Repository.Interfaces;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;

namespace FiapCloudGames.Application.Services;

public class AuthService : IAuthService
{
    private readonly IUserRepository _repository;
    private readonly IConfiguration _config;

    public AuthService(IUserRepository repository, IConfiguration config)
    {
        _repository = repository;
        _config = config;

    }

    public async Task<TokenDto> AuthenticateAsync(AuthenticateDto dto)
    {
        var user = await _repository.GetByEmailAsync(dto.Email);
        if (user == null || !BCrypt.Net.BCrypt.Verify(dto.Password, user.PasswordHash)) {
            throw new Exception("E-mail ou senha inválidos");
        }

        return new TokenDto(GenerateJwt(user));
    }

    public async Task<PlayerDto> RegisterPlayerAsync(RegisterPlayerDto dto)
    {
        var player = new Player
        {
            Id = Guid.NewGuid(),
            Name = dto.Name,
            Username = dto.Username,
            Email = dto.Email,
            PasswordHash = BCrypt.Net.BCrypt.HashPassword(dto.Password),
            BornDate = dto.BornDate,
            Cpf = dto.Cpf,
            Library = new List<Guid>(),
            Cart = new List<Guid>(),
            Wishlist = new List<Guid>(),
            Role = UserRole.Player,
            CreatedAt = DateTime.UtcNow
        };

        await _repository.CreateAsync(player);

        return new PlayerDto(player);
    }

    public async Task<PublisherDto> RegisterPublisherAsync(RegisterPublisherDto dto)
    {
        var publisher = new Publisher
        {
            Id = Guid.NewGuid(),
            Name = dto.Name,
            Username = dto.Username,
            PublisherName = dto.PublisherName,
            CompanyName = dto.CompanyName,
            Email = dto.Email,
            PasswordHash = BCrypt.Net.BCrypt.HashPassword(dto.Password),
            BornDate = dto.BornDate,
            Cnpj = dto.Cnpj,
            GamesPublished = new List<Guid>(),
            TeamMembers = new List<Guid>(),
            Role = UserRole.Publisher,
            CreatedAt = DateTime.UtcNow
        };

        await _repository.CreateAsync(publisher);

        return new PublisherDto(publisher);
    }

    private string GenerateJwt(User user)
    {
        var key = Encoding.UTF8.GetBytes(_config["Jwt:Key"]!);

        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity(new[]
            {
            new Claim(ClaimTypes.Name, user.Id.ToString()),
            new Claim(ClaimTypes.Role, user.Role.ToString())
        }),
            Expires = DateTime.UtcNow.AddHours(3),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(key),
                SecurityAlgorithms.HmacSha256Signature
            ),
            Issuer = _config["Jwt:Issuer"],
            Audience = _config["Jwt:Issuer"]
        };

        var handler = new JwtSecurityTokenHandler();
        var token = handler.CreateToken(tokenDescriptor);
        return handler.WriteToken(token);
    }
}
