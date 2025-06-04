using FiapCloudGames.Domain.Enums;

namespace FiapCloudGames.Domain
{
   public class User
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public UserRole Role { get; set; }
        public DateTime BornDate { get; set; }

        public ICollection<UserGameLibrary> UserGames { get; set; }

        public ICollection<WishListItem> WishList { get; set; }

        public ICollection<CartItem> Cart { get; set; }
    }
}
