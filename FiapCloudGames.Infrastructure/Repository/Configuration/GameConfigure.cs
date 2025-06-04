using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FiapCloudGames.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace FiapCloudGames.Infrastructure.Repository.Configuration
{
    public class GameConfigure : IEntityTypeConfiguration<Game>
    {
        public void Configure(EntityTypeBuilder<Game> builder)
        {
            builder.HasKey(g => g.Id);

            builder.Property(g => g.Title).IsRequired().HasMaxLength(80);
            builder.Property(g => g.Publisher).IsRequired().HasMaxLength(80);
            builder.Property(g => g.Description).HasColumnType("TEXT");
            builder.Property(g => g.Price).HasColumnType("DECIMAL(8,2)");
            builder.Property(p => p.ReleaseDate).HasColumnType("DATETIME");
        }
    }
}
