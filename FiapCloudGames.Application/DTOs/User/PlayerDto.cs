﻿using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Domain.Enums;

namespace FiapCloudGames.Application.DTOs.User;

[ExcludeFromCodeCoverage]
public class PlayerDto
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string Username { get; set; }
    public string Email { get; set; }
    public DateTime BornDate { get; set; }
    public DateTime CreatedAt { get; set; }
    public UserRole Role { get; set; }
    public string Cpf { get; set; }

    public PlayerDto (Player player)
    {
        Id = player.Id;
        Name = player.Name;
        Username = player.Username;
        Email = player.Email;
        BornDate = player.BornDate;
        CreatedAt = player.CreatedAt;
        Role = player.Role;
        Cpf = player.Cpf;
    }
}
