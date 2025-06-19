using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.Interface;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Infrastructure.Repository;
using FiapCloudGames.Infrastructure.Repository.Interfaces;

namespace FiapCloudGames.Application.Services;

public class CartService : ICartService
{
    private readonly IUserRepository _userRepository;
    private readonly IGameRepository _gameRepository;
    public CartService(IUserRepository userRepository, IGameRepository gameRepository)
    {
        _userRepository = userRepository;
        _gameRepository = gameRepository;
    }

    public async Task AddToCart(Guid gameId, Guid userId)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        user.Cart.Add(gameId);
        await _userRepository.UpdateAsync(user);
    }

    public async Task DeleteFromCart(Guid gameId, Guid userId)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        if (!user.Cart.Contains(gameId))
            throw new Exception("Jogo não está na biblioteca.");

        user.Cart.Remove(gameId);
        await _userRepository.UpdateAsync(user);
    }

    public async Task<IEnumerable<Game>> GetCart(Guid userId)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        if (user.Cart.Any())
            return new List<Game>();

        return await _gameRepository.GetByIdsAsync(user.Cart);
    }
}
