using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.Authenticate;
public class RegisterPlayerDto
{
    public string Name { get; set; }
    public string Username { get; set; }

    [Required]
    [EmailAddress(ErrorMessage = "Favor informar um endereço de e-mail válido.")]
    public string Email { get; set; }

    [MinLength(8, ErrorMessage = "A senha deve ter pelo menos 8 caracteres.")]
    [RegularExpression(@"^(?=.*[a-zA-Z])(?=.*\d)(?=.*[\W_]).+$",
        ErrorMessage = "A senha deve conter ao menos uma letra, um número e um caractere especial.")]
    public string Password { get; set; }
    public DateTime BornDate { get; set; }
    public string Cpf { get; set; }
}

