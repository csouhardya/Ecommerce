using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace ApplicationCore.Models
{
    public class Product 
    {
        public Guid Guid { get; set; }
        public string Name { get; set; }
        public string Sku { get; set; }
        public string Currency { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
        public byte[] Image { get; set; }
        public string ImageContentType { get; set; }
    }
}
