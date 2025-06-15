using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.Authenticate;
public class RegisterPublisherDto
{
    public string Name { get; set; }
    public string PublisherName { get; set; }
    public string CompanyName { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public DateTime BornDate { get; set; }
    public string Cnpj { get; set; }
}
