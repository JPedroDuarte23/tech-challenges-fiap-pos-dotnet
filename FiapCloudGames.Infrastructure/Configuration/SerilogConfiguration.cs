using Serilog.Events;
using Serilog;

namespace FiapCloudGames.Infrastructure.Configuration;

public class SerilogConfiguration
{
    public static Serilog.Core.Logger ConfigureSerilog()
    {
        return new LoggerConfiguration()
        .MinimumLevel.Information()
        .Enrich.FromLogContext()
        .WriteTo.Console(
            outputTemplate: "{Timestamp:yyyy-MM-dd HH:mm:ss} [{Level}] [CorrelationId: {CorrelationId}] {Message}{NewLine}{Exception}")
        .CreateLogger();
    }
}
