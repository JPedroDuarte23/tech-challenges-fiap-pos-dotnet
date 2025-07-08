﻿using System.Diagnostics.CodeAnalysis;

namespace FiapCloudGames.Domain.Entities;

[ExcludeFromCodeCoverage]
public class Game
{
    public Guid Id { get; set; }
    public string Title { get; set; }
    public Guid Publisher { get; set; }
    public string Description { get; set; }
    public Double Price { get; set; }
    public DateTime ReleaseDate { get; set; }

}
