﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.Exceptions;

public class HttpException : Exception
{
    public int StatusCode { get; }
    public string Error { get; }

    public HttpException(int statusCode, string error, string message)
        : base(message)
    {
        StatusCode = statusCode;
        Error = error;
    }
}
