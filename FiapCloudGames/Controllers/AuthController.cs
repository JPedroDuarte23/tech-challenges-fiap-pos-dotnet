using FiapCloudGames.Application.DTOs.Authenticate;
using FiapCloudGames.Application.Interface;
using Microsoft.AspNetCore.Mvc;

namespace FiapCloudGames.API.Controllers;

[ApiController]
[Route("api/auth")]
public class AuthController : ControllerBase
{
    private readonly IAuthService _authService;

    public AuthController(IAuthService authService)
    {
        _authService = authService;
    }

    [HttpPost("register/player")]
    public async Task<IActionResult> RegisterPlayer([FromBody] RegisterPlayerDto dto)
    {
        await _authService.RegisterPlayerAsync(dto);
        return Ok();
    }

    [HttpPost("register/publisher")]
    public async Task<IActionResult> RegisterPublisher([FromBody] RegisterPublisherDto dto)
    {
        await _authService.RegisterPublisherAsync(dto);
        return Ok();
    }

    [HttpPost("authenticate")]
    public async Task<IActionResult> Authenticate([FromBody] AuthenticateDto dto)
    {
        var token = await _authService.AuthenticateAsync(dto);
        return Ok(token); 
    }
}
