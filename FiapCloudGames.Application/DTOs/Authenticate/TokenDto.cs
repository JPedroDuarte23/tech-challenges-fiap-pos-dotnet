﻿using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.Authenticate;


[ExcludeFromCodeCoverage]
public class TokenDto
{
    public string Token { get; set; }

    public TokenDto(string token)
    {
        Token = token;
    }
}
