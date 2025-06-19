using FiapCloudGames.Application.Interface;
using FiapCloudGames.Domain.Entities;
using FiapCloudGames.Infrastructure.Repository.Interfaces;

namespace FiapCloudGames.Application.Services;

public class LibraryService : ILibraryService
{
    private readonly IUserRepository _userRepository;
    private readonly IGameRepository _gameRepository;
    public LibraryService(IUserRepository userRepository, IGameRepository gameRepository)
    {
        _userRepository = userRepository;
        _gameRepository = gameRepository;
    }
    public async Task<IEnumerable<Game>> GetPlayerGamesAsync(Guid userId)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        if (user.Library.Any())
            return new List<Game>();

        return await _gameRepository.GetByIdsAsync(user.Library);
    }

    public async Task AddToLibraryAsync(Guid userId, List<Guid> games)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        user.Library.AddRange(games);

        await _userRepository.UpdateAsync(user);
    }

    public async Task RemoveFromLibraryAsync(Guid userId, Guid gameId)
    {
        var user = (Player) await _userRepository.GetByIdAsync(userId);
        if (user == null)
            throw new Exception("Usuário não encontrado");

        if (!user.Library.Contains(gameId))
            throw new Exception("Jogo não está na biblioteca.");

        user.Library.Remove(gameId);
        await _userRepository.UpdateAsync(user);
    }
}
