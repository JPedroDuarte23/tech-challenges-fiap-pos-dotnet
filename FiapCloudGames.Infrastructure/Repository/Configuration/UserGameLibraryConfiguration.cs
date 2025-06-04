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
    public class UserGameLibraryConfiguration : IEntityTypeConfiguration<UserGameLibrary>
    {
        public void Configure(EntityTypeBuilder<UserGameLibrary> builder)
        {
            builder.HasKey(l => l.Id);

            builder.Property(l => l.UserId).HasColumnType("INT").IsRequired();
            builder.Property(l => l.GameId).HasColumnType("INT").IsRequired();
            builder.Property(l => l.AdquiredAt).HasColumnType("DATETIME");
            builder.HasOne(l => l.User).WithMany(l => l.UserGames).HasPrincipalKey(u => u.Id);
            builder.HasOne(l => l.Game).WithMany(l => l.UsersWithGame).HasPrincipalKey(g => g.Id);
        }
    }
}
