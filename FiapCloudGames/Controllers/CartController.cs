using System.Security.Claims;
using FiapCloudGames.Application.DTOs.Game;
using FiapCloudGames.Application.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace FiapCloudGames.API.Controllers;

[ApiController]
[Route("api/cart")]
public class CartController : ControllerBase
{
    private readonly ICartService _service;
    public CartController(ICartService service)
    {
        _service = service;
    }

    [HttpPost]
    [Authorize(Roles = "Player")]
    public async Task<IActionResult> AddToCart(Guid gameId)
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        await _service.AddToCart(gameId, userId);
        return Ok();
    }

    [HttpDelete]
    [Authorize(Roles = "Player")]
    public async Task<IActionResult> DeleteFromCart(Guid gameId)
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        await _service.DeleteFromCart(gameId, userId);
        return Ok();
    }

    [HttpGet]
    [Authorize(Roles = "Player")]
    public async Task<ActionResult<IEnumerable<GameDto>>> GetCart()
    {
        var userId = Guid.Parse(User.FindFirstValue(ClaimTypes.Name)!);
        var cart = await _service.GetCart(userId);
        return Ok(cart);
    }
}
