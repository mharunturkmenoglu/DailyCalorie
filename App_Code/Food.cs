using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DailyCalorie
{
    public class Food
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Calorie { get; set; }
        public string Image { get; set; }
    }
}