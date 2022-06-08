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

            Label1.Text = "Name:" + foodList[7].Name + " Calorie:" + foodList[7].Calorie + " count:" + foodList.Count;
            Label2.Text = "Name:" + userList[1].Name + " Gender:" + userList[1].Gender + " count:" + userList.Count;

        }
    }
}