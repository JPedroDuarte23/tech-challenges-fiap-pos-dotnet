using System.Diagnostics.CodeAnalysis;

namespace FiapCloudGames.Infrastructure.Mappings;

[ExcludeFromCodeCoverage]
public static class MongoMappings
{
    public static void ConfigureMappings() 
    {
        UserMapping.Configure();
        GameMapping.Configure();
    }
}