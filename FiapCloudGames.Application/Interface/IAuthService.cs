using FiapCloudGames.Application.DTOs.Authenticate;
using FiapCloudGames.Application.DTOs.User;

namespace FiapCloudGames.Application.Interface;

public interface IAuthService
{
    Task<TokenDto> AuthenticateAsync(AuthenticateDto dto);

    Task<PlayerDto> RegisterPlayerAsync(RegisterPlayerDto dto);

    Task<PublisherDto> RegisterPublisherAsync(RegisterPublisherDto dto);
}
