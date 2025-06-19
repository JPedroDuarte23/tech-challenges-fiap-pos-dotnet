using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Domain.Entities;

namespace FiapCloudGames.Application.Interface
{
    public interface ILibraryService
    {
        Task<IEnumerable<Game>> GetPlayerGamesAsync(Guid userId);
        Task AddToLibraryAsync(Guid userId, List<Guid> games);
        Task RemoveFromLibraryAsync(Guid userId, Guid gameId);
    }
}
