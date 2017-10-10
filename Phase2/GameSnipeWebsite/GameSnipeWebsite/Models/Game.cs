using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GameSnipeWebsite.Models
{
    public class Game
    {
        private int id;
        private string name;
        private decimal price;
        private int platformId;
        private int categoryId;
        private int developerId;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public decimal Price { get => price; set => price = value; }
        public int PlatformId { get => platformId; set => platformId = value; }
        public int CategoryId { get => categoryId; set => categoryId = value; }
        public int DeveloperId { get => developerId; set => developerId = value; }
    }
}