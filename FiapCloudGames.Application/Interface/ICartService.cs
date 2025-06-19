using FiapCloudGames.Domain.Entities;

namespace FiapCloudGames.Application.Interface
{
    public interface ICartService
    {
        Task<IEnumerable<Game>> GetCart(Guid userId);
        Task AddToCart(Guid gameId, Guid userId);
        Task DeleteFromCart(Guid gameId, Guid userId);

    }
}
