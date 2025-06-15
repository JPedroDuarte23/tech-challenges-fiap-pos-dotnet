using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Application.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FiapCloudGames.API.Controllers;


[ApiController]
[Route("api/games")]
public class GameController : ControllerBase
{
    private readonly IGameService _service;

    public GameController(IGameService service)
    {
        _service = service;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<ActionResult<IEnumerable<GameDto>>> GetAll()
    {
        var games = await _service.GetAllAsync();
        return Ok(games);
    }

    [HttpGet("{id}")]
    [AllowAnonymous]
    public async Task<ActionResult<GameDto>> GetById(Guid id)
    {
        var game = await _service.GetByIdAsync(id);
        if (game == null)
            return NotFound();

        return Ok(game);
    }

    [HttpPost]
    [Authorize(Roles = "Publisher")]
    public async Task<ActionResult<GameDto>> Create([FromBody] CreateGameDto dto)
    {
        var game = await _service.CreateAsync(dto);
        return CreatedAtAction(nameof(GetById), new { id = game.Id }, game);
    }

    [HttpPut("{id}")]
    [Authorize(Roles = "Publisher")]
    public async Task<IActionResult> Update(Guid id, [FromBody] UpdateGameDto dto)
    {
        var updated = await _service.UpdateAsync(id, dto);
        if (!updated)
            return NotFound();

        return NoContent();
    }

    [HttpDelete("{id}")]
    [Authorize(Roles = "Publisher")]
    public async Task<IActionResult> Delete(Guid id)
    {
        var deleted = await _service.DeleteAsync(id);
        if (!deleted)
            return NotFound();

        return NoContent();
    }
}
