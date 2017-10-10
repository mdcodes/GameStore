using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GameSnipeWebsite.Models
{
    public class Event
    {
        private int eventID;
        private string name;
        private DateTime date;
        private DateTime time;
        private string location;
        private decimal price;
        public Event() { }

        public Event(int id, string name, DateTime date, DateTime time, string location, decimal price)
        {
            this.eventID = id;
            this.name = name;
            this.date = date;
            this.time = time;
            this.location = location;
            this.price = price;
        }

        public int Id { get => eventID; set => eventID = value; }
        public string Name { get => name; set => name = value; }
        public DateTime Date { get => date; set => date = value; }
        public DateTime Time { get => time; set => time = value; }
        public string Location { get => location; set => location = value; }
        public decimal Price { get => price; set => price = value; }
    }
}