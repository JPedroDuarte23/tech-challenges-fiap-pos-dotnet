﻿using System.Diagnostics.CodeAnalysis;
using FiapCloudGames.Domain.Enums;

namespace FiapCloudGames.Domain.Entities;

[ExcludeFromCodeCoverage]
public abstract class User
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string Username { get; set; }
    public string Email { get; set; }
    public string PasswordHash { get; set; }
    public DateTime BornDate { get; set; }
    public DateTime CreatedAt { get; set; }
    public UserRole Role { get; set; }

}
