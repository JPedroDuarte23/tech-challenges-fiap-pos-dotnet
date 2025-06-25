﻿using FiapCloudGames.Domain.Entities;

namespace FiapCloudGames.Application.Interface;

public interface IGameRepository
{
    Task CreateAsync(Game game);
    Task<IEnumerable<Game>> GetAllAsync();
    Task<IEnumerable<Game>> GetAllByPublisherAsync(Guid publisherId);
    Task<Game> GetByIdAsync(Guid id);
    Task<IEnumerable<Game>> GetByIdsAsync(IEnumerable<Guid> ids);
    Task UpdateAsync(Game game);
}
