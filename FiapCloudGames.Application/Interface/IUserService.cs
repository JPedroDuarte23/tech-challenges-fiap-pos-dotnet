using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.DTOs.User;
using FiapCloudGames.Domain.Entities;

namespace FiapCloudGames.Application.Interface
{
    public interface IUserService
    {
        Task<UserDto> GetByIdAsync(Guid id);

        Task<IEnumerable<UserDto>> GetAllAsync();

        Task UpdateAsync(Guid id, UpdateUserDto user);

        Task DeleteAsync(Guid id);

        Task<IEnumerable<PlayerDto>> GetPlayersAsync();

        Task<IEnumerable<PublisherDto>> GetPlublishersAsync();
    }
}
