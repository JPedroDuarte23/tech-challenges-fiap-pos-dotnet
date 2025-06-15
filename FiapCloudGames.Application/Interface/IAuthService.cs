using FiapCloudGames.Application.DTOs.Authenticate;

namespace FiapCloudGames.Application.Interface;

public interface IAuthService
{
    Task<TokenDto> AuthenticateAsync(AuthenticateDto dto);

    Task RegisterPlayerAsync(RegisterPlayerDto dto);

    Task RegisterPublisherAsync(RegisterPublisherDto dto);
}
