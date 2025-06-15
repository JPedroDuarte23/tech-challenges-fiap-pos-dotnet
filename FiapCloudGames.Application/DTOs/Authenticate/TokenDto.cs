using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.Authenticate
{
    public class TokenDto(string token)
    {
        private string Token { get; set; } = token;
    }
}
