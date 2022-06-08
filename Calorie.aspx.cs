using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

namespace DailyCalorie
{
    public partial class Calorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Food> foodList = new List<Food>();
            List<User> userList = new List<User>();

            string sql,sql2; int row=0;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            string connectionstring = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source = ∼\\App_Data\\DailyCalorie.mdb";
            //C:\\Users\\mahmu\\Desktop\\webBased\\DailyCalorie\\
            con.ConnectionString = connectionstring;
            con.Open(); // connection open  
                        // sql query  
            sql = "select * from [Food] " ;
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();    

            OleDbDataReader reader = cmd.ExecuteReader();
            Label1.Text= reader.Read().ToString();
            
            while (reader.Read())
            {
                Food food = new Food();
                food.Name = (string)reader["FoodName"];
                food.Calorie = (int)reader["Calorie"];
                foodList.Add(food);
            }
            con.Close();


            Label1.Text = "Name:" + foodList[7].Name +" Calorie:"+ foodList[7].Calorie + " count:" + foodList.Count;

            OleDbConnection con2 = new OleDbConnection();
            con2.ConnectionString = connectionstring;
            con2.Open();
            sql2 = "select * from [User] ";
            OleDbCommand cmd2 = new OleDbCommand(sql2, con2);
            cmd2.ExecuteScalar();

            OleDbDataReader reader2 = cmd2.ExecuteReader();
            

            while (reader2.Read())
            {
                User user = new User();
                user.Name = (string)reader2["Username"];
                user.Email = (string)reader2["Email"];
                user.Password = (string)reader2["Password"];
                user.Gender = (string)reader2["Gender"];
                user.Age = (int)reader2["Age"];
                user.WeightInKG = (int)reader2["Weight"];
                user.HeightInCM = (int)reader2["Height"];
                userList.Add(user);
            }

            Label2.Text = "Name:" + userList[1].Name + " Gender:" + userList[1].Gender + " count:" + userList.Count;

            con2.Close();

        }
    }
}