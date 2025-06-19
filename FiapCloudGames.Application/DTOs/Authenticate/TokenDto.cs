﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FiapCloudGames.Application.DTOs.Authenticate;

public class TokenDto
{
    public string Token { get; set; }

    public TokenDto(string token)
    {
        Token = token;
    }
}
