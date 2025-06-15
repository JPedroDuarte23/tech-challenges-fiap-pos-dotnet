using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.DTOs.Game;

namespace FiapCloudGames.Application.Interface
{
    public interface IGameService
    {
        Task<List<GameDto>> GetAllAsync();
        Task<List<GameDto>> GetAllByPublisherAsync(Guid publisherName);
        Task<GameDto> GetByIdAsync(Guid id);
        Task CreateAsync(Guid publisherID, CreateGameDto dto);
        Task UpdateAsync(Guid id, UpdateGameDto dto);
    }
}
