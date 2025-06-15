using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Domain.Entities;
using MongoDB.Bson.Serialization;
using MongoDB.Bson.Serialization.IdGenerators;

namespace FiapCloudGames.Infrastructure.Mappings;

public class GameMapping
{
    public static void Configure()
    {
        if (!BsonClassMap.IsClassMapRegistered(typeof(Game)))
        {
            BsonClassMap.RegisterClassMap<Game>(map =>
            {
                map.AutoMap();
                map.MapIdMember(g => g.Id)
                   .SetIdGenerator(GuidGenerator.Instance);
                map.MapMember(g => g.Title).SetIsRequired(true);
                map.MapMember(g => g.Publisher).SetIsRequired(true);
                map.MapMember(g => g.Description).SetIsRequired(true);
                map.MapMember(g => g.Price).SetIsRequired(true);
                map.MapMember(g => g.ReleaseDate).SetIsRequired(true);
            });
        }
    }
}
