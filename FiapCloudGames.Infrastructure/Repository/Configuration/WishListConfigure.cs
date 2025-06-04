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
    public class WishListConfigure : IEntityTypeConfiguration<WishListItem>
    {
        public void Configure(EntityTypeBuilder<WishListItem> builder)
        {
            builder.HasKey(w => w.Id);

            builder.Property(w => w.User).HasColumnType("INT").IsRequired();
            builder.Property(w => w.GameId).HasColumnType("INT").IsRequired();
            builder.Property(w => w.AddedAt).HasColumnType("DATETIME");
            builder.HasOne(w => w.User).WithMany(w => w.WishList).HasPrincipalKey(u => u.Id);
            builder.HasOne(w => w.Game).WithMany(w => w.WishListedBy).HasPrincipalKey(g => g.Id);
        }   
    }
}
