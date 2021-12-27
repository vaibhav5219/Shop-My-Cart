using System.Data.Entity;

namespace ShoppingCart.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("ShoppingCart")
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<CartItem> ShoppingCartItems { get; set; }
    }
}