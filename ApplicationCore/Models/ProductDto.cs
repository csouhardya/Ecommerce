using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace ApplicationCore.Models
{
    public class ProductDto
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string Sku { get; set; }
        [Required]
        public decimal Amount { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public IFormFile Image { get; set; }
    }
}
