namespace FiapCloudGames.Domain
{
    public class Game
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Publisher { get; set; }
        public string Description { get; set; }
        public Double Price { get; set; }
        public DateTime ReleaseDate { get; set; }

        public ICollection<UserGameLibrary> UsersWithGame { get; set; }

        public ICollection<WishListItem> WishListedBy { get; set; }

        public ICollection<CartItem> CartItems { get; set; }
    }
}
