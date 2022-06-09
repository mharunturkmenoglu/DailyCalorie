using DailyCalorie.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyCalorie
{
    public partial class FoodBasaket : System.Web.UI.Page
    { 
        public Context context = new Context();
        public List<Food> food = new List<Food>();
        protected void Page_Load(object sender, EventArgs e)
        {
            food = context.GetAllFood();
        }

        public int FoodCount()
        {
            int count = 0;
            var cartDetails = (List<CartDetails>)Session["CartDetails"];
            if (cartDetails == null)
                return 0;
            foreach (var item in cartDetails)
            {
                count += item.FoodQuantity;
            }
            return count;
        }
    }
}