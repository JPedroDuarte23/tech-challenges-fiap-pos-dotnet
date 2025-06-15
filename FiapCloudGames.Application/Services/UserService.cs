using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.DTOs.User;
using FiapCloudGames.Application.Interface;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Infrastructure.Repository.Interfaces;

namespace FiapCloudGames.Application.Services
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _repo;
        public UserService(IUserRepository repo)
        {
            _repo = repo;
        }

        public async Task<UserDto?> GetByIdAsync(Guid id)
        {
            User existingUser = await _repo.GetByIdAsync(id);
            if (existingUser == null)
                throw new Exception("Usuario não encontrado");

            UserDto dto = null;

            if (existingUser is Player)
            {
                Player aux = (Player)existingUser;
                dto = new UserDto(aux);
            }
            else
            {
                Publisher aux = (Publisher)existingUser;
                dto = new UserDto(aux);
            }

            return dto;
        }
        public async Task UpdateAsync(Guid id, UpdateUserDto dto)
        {
            User existingUser = await _repo.GetByIdAsync(id);
            if (existingUser == null)
                throw new Exception("Usuario não encontrado");
            
            existingUser.Name = dto.Name;
            existingUser.UserName = dto.UserName;

            await _repo.UpdateAsync(existingUser);
        }
        public async Task DeleteAsync(Guid id)
        {
            User existingUser = await _repo.GetByIdAsync(id);
            if (existingUser == null)
                throw new Exception("Usuario não encontrado");

            await _repo.DeleteAsync(id);
        }
        public Task<IEnumerable<Player>> GetPlayersAsync() => _repo.GetPlayersAsync();
        public Task<IEnumerable<Publisher>> GetPlublishersAsync() => _repo.GetPublishersAsync();
  
        public Task<IEnumerable<User>> GetAllAsync() => _repo.GetAllAsync();
    }
}
