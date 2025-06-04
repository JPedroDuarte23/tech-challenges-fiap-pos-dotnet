namespace FiapCloudGames.Domain
{
    public class UserGameLibrary
    {
        public int Id { get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
        
        public Guid GameId { get; set; }
        public Game Game { get; set; }

        public DateTime AdquiredAt { get; set; }

    }
}
