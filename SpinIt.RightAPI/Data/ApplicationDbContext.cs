using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Spinit.Data.Models;
using Spinit.Data.Models.DTOs.Tokens;

namespace Spinit.Data
{

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, ApplicationRole, string, IdentityUserClaim<string>,
    ApplicationUserRole, IdentityUserLogin<string>,
    IdentityRoleClaim<string>, IdentityUserToken<string>>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ApplicationRole> ApplicationRole { get; set; }
        public DbSet<RefreshToken> RefreshTokens { get; set; }
        public DbSet<ApplicationUser> User { get; set; }        
        public DbSet<UserActivation> UserActivation { get; set; }
        public DbSet<ProductCategory> ProductCategory { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<PurchaseOrder> Order { get; set; }
        public DbSet<OrderDetail> OrderDetail { get; set; }
        

        public void ConfigureServices(DbContextOptionsBuilder optionsBuilder)
        {
            //services.AddDbContext<ApplicationDbContext>(options =>
            //    options.UseSqlServer(
            //        IConfiguration.GetConnectionString("DefaultConnection")));
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<ApplicationUserRole>(userRole =>
            {
                userRole.HasKey(ur => new { ur.UserId, ur.RoleId });

                userRole.HasOne(ur => ur.Role)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.RoleId)
                    .IsRequired();

                userRole.HasOne(ur => ur.User)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.UserId)
                    .IsRequired();
            });
        }

    }
}


