using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Domain.Entities;
using MongoDB.Bson.Serialization;

namespace FiapCloudGames.Infrastructure.Mappings;


public static class MongoMappings
{
    public static void ConfigureMappings() 
    {
        UserMapping.Configure();
        GameMapping.Configure();
    }
}
