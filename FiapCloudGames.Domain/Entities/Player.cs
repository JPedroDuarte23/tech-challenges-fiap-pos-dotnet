using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Domain.Entities
{
    public class Player : User
    {
        public string Cpf { get; set; }
        public List<Guid> Library { get; set; } = new();
        public List<Guid> Cart { get; set; } = new();
        public List<Guid> Wishlist { get; set; } = new();
    }
}
