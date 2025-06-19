using System.Security.Claims;
using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Application.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FiapCloudGames.API.Controllers;


[ApiController]
[Route("api/library")]
public class LibraryController : ControllerBase
{
    private readonly ILibraryService _service;
    public LibraryController (ILibraryService service)
    {
        _service = service;
    }

    [HttpGet]
    [Authorize(Roles = "Player")]
    public async Task<ActionResult<IEnumerable<GameDto>>> GetPlayerGames()
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        return Ok(_service.GetPlayerGamesAsync(userId));
    }

    [HttpPost]
    [Authorize(Roles = "Player")]
    public async Task<IActionResult> AddToLibrary([FromBody] List<Guid> games)
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        await _service.AddToLibraryAsync(userId, games);
        return Ok();
    }

    [HttpDelete("{id}")]
    [Authorize(Roles = "Player")]
    public async Task<IActionResult> RemoveGame(string id)
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        var gameId = Guid.Parse(id);
        await _service.RemoveFromLibraryAsync(userId, gameId);
        return NoContent();
    }
}
