using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.Exceptions;

public class ModifyDatabaseException : HttpException
{
    public ModifyDatabaseException(string message)
    : base(500, "Internal Server Error", message) { }
}
