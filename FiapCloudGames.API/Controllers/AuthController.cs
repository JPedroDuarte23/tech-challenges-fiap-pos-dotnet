using System.Diagnostics.CodeAnalysis;
using FiapCloudGames.Application.DTOs.Authenticate;
using FiapCloudGames.Application.DTOs.User;
using FiapCloudGames.Application.Interface;
using Microsoft.AspNetCore.Mvc;

namespace FiapCloudGames.API.Controllers;

[ApiController]
[Route("api/auth")]
[ExcludeFromCodeCoverage]
public class AuthController : ControllerBase
{
    private readonly IAuthService _authService;

    public AuthController(IAuthService authService)
    {
        _authService = authService;
    }

    [HttpPost("register/player")]
    public async Task<ActionResult<PlayerDto>> RegisterPlayer([FromBody] RegisterPlayerDto dto)
    {
        var response = await _authService.RegisterPlayerAsync(dto);
        return Created("api/users/" + response.Id , response);
    }

    [HttpPost("register/publisher")]
    public async Task<ActionResult<PlayerDto>> RegisterPublisher([FromBody] RegisterPublisherDto dto)
    {
        var response = await _authService.RegisterPublisherAsync(dto);
        return Created("api/users/" + response.Id, response);
    }

    [HttpPost("authenticate")]
    public async Task<ActionResult<TokenDto>> Authenticate([FromBody] AuthenticateDto dto)
    {
        var token = await _authService.AuthenticateAsync(dto);
        return Ok(token); 
    }
}
