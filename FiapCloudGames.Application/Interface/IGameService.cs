using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Domain.Entities;

namespace FiapCloudGames.Application.Interface
{
    public interface IGameService
    {
        Task<IEnumerable<Game>> GetAllAsync();
        Task<IEnumerable<Game>> GetAllByPublisherAsync(Guid publisherId);
        Task<Game> GetByIdAsync(Guid id);
        Task CreateAsync(Guid publisherID, CreateGameDto dto);
        Task UpdateAsync(Guid id, UpdateGameDto dto);
    }
}
