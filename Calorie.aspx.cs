using System;
using System.Collections.Generic;
using System.Data.OleDb;

namespace DailyCalorie
{
    public partial class Calorie : System.Web.UI.Page
    {
        Context context = new Context();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Food> foodList = new List<Food>();
            List<User> userList = new List<User>();

            foodList = context.GetAllFood();
            userList = context.GetAllUsers();

           


        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {
           string x= weighttextbox.Value;
            x= weighttextbox.Value.ToString();
            
            
        }
    }
}