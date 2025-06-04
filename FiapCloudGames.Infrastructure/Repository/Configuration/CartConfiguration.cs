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
    public class CartConfiguration : IEntityTypeConfiguration<CartItem>
    {
        public void Configure(EntityTypeBuilder<CartItem> builder)
        {
            builder.HasKey(c => c.Id);
            builder.Property(c => c.UserId).HasColumnType("INT").IsRequired();
            builder.Property(c => c.GameId).HasColumnType("INT").IsRequired();
            builder.Property(c => c.AdquiredAt).HasColumnType("DATETIME");
            builder.HasOne(c => c.User).WithMany(c => c.Cart).HasPrincipalKey(u => u.Id);
            builder.HasOne(c => c.Game).WithMany(c => c.CartItems).HasPrincipalKey(g => g.Id);
        }
    }
}
