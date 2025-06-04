namespace FiapCloudGames.Domain
{
    public class WishListItem
    {
        public int Id { get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
        
        public Guid GameId { get; set; }
        public Game Game { get; set; }

        public DateTime AddedAt { get; set; }

    }
}
