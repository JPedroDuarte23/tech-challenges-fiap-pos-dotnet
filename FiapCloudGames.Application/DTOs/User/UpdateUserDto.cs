using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.User
{
    public class UpdateUserDto
    {
        [Required(ErrorMessage = "O nome de usuário é obrigatório.")]
        [StringLength(50, ErrorMessage = "O nome de usuário deve ter no máximo 50 caracteres.")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "O nome é obrigatório.")]
        [StringLength(100, ErrorMessage = "O nome deve ter no máximo 100 caracteres.")]
        public string Name { get; set; }

    }
}
