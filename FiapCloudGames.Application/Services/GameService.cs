using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Application.Interface;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Infrastructure.Repository.Interfaces;

namespace FiapCloudGames.Application.Services;

public class GameService : IGameService
{
    private readonly IGameRepository _gameRepository;
    private readonly IUserRepository _userRepository;
    public GameService(IGameRepository gameRepository, IUserRepository userRepository)
    {
        _gameRepository = gameRepository;
        _userRepository = userRepository;
    }

    public async Task CreateAsync(Guid publisherId, CreateGameDto dto)
    {
        var user = await _userRepository.GetByIdAsync(publisherId);
        if(user == null)
            throw new Exception("Publisher não encontrada");
        var game = new Game
        {
            Id = Guid.NewGuid(),
            Title = dto.Title,
            Publisher = publisherId,
            Description = dto.Description,
            Price = dto.Price,
            ReleaseDate = dto.ReleaseDate
        };

        await _gameRepository.CreateAsync(game);
    }

    public async Task<IEnumerable<Game>> GetAllAsync()
    {
        return await _gameRepository.GetAllAsync();
    }

    public async Task<IEnumerable<Game>> GetAllByPublisherAsync(Guid publisherId)
    {
        var user = await _userRepository.GetByIdAsync(publisherId);
        if (user == null)
            throw new Exception("Publisher não encontrada");

        return await _gameRepository.GetAllByPublisherAsync(publisherId);
    }

    public async Task<Game> GetByIdAsync(Guid id)
    {
        var game = await _gameRepository.GetByIdAsync(id);
        if (game == null)
            throw new Exception("Jogo não encontrado");

        return game;
    }

    public async Task UpdateAsync(Guid id, UpdateGameDto dto)
    {
        var game = await _gameRepository.GetByIdAsync(id);
        if (game == null)
            throw new Exception("Jogo não encontrado");

        game.Title = dto.Title;
        game.Price = dto.Price;
        game.Description = dto.Description;
        game.ReleaseDate = dto.ReleaseDate;

        await _gameRepository.UpdateAsync(game);
    }
}
