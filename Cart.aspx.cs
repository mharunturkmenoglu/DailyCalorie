using DailyCalorie.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyCalorie
{
    public partial class Basket : System.Web.UI.Page
    {
        public int calorieSum = 0;
        Context context = new Context();
        public List<CartDetails> cartDetailsList;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            bool flag = false;
            Int32.TryParse(Request.QueryString["Id"], out id);

            cartDetailsList = (List<CartDetails>)Session["CartDetails"];
            if(cartDetailsList == null)
            {
                cartDetailsList = new List<CartDetails>();
                CartDetails cart = new CartDetails();
                var food = GetFoodById(id);
                cart.FoodId = food.Id;
                cart.FoodName = food.Name;
                cart.FoodCalorie = food.Calorie;
                cart.FoodQuantity = cart.FoodQuantity + 1;
                cartDetailsList.Add(cart);
            }
            else
            {
                foreach (var item in cartDetailsList)
                {
                    if (id == item.FoodId)
                    {
                        item.FoodQuantity++;
                        flag = true;
                    }
                }

                if (flag == false)
                {
                    CartDetails cart = new CartDetails();
                    var food = GetFoodById(id);
                    cart.FoodId = food.Id;
                    cart.FoodName = food.Name;
                    cart.Image = food.Image;
                    cart.FoodCalorie = food.Calorie;
                    cart.FoodQuantity = cart.FoodQuantity + 1;
                    cartDetailsList.Add(cart);
                }
            }
            Session["CartDetails"] = cartDetailsList;
        }

        Food GetFoodById(int id)
        {
            var foodList = context.GetAllFood();

            foreach (var food in foodList)
            {
                if (food.Id == id)
                    return food; 
            }
            throw new NotImplementedException();
        }
    }
}