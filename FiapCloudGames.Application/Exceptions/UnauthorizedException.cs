using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.Exceptions;

public class NotFoundException : HttpException
{
    public NotFoundException(string message)
        : base(404, "Not Found", message) { }
}