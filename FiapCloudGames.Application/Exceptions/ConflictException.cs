using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.Exceptions;

public class ConflictException : HttpException
{
    public ConflictException(string message)
     : base(409, "Conflict", message) { }
}
