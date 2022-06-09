using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DailyCalorie.App_Code
{
    public class CartDetails
    {
        public int FoodId { get; set; }
        public string FoodName { get; set; }
        public int FoodQuantity { get; set; } = 0;
        public int FoodCalorie { get; set; }
        public string Image { get; set; }
    }
}