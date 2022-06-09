using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace DailyCalorie
{
    public class Context
    {
        public List<Food> GetAllFood()
        {
            string query = "select * from [Food] ";
            List<Food> foodList = new List<Food>();
            OleDbConnection con = new OleDbConnection();
            string path = HttpContext.Current.Server.MapPath("~/App_Data/DailyCalorie.mdb");
            string connectionstring = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source =" + path;
            con.ConnectionString = connectionstring;
            con.Open(); // connection open  
                        // sql query  
            OleDbCommand cmd = new OleDbCommand(query, con);
            cmd.ExecuteScalar();

            OleDbDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Food food = new Food();
                food.Id = Int16.Parse((string)reader["Id"]);
                food.Name = (string)reader["FoodName"];
                food.Calorie = (int)reader["Calorie"];
                food.Image = (string)reader["Image"];
                if (food.Image.Contains("#"))
                {
                    food.Image = food.Image.Replace("#", "");
                }
                foodList.Add(food);
            }
            con.Close();
            return foodList;
        }
        public List<User> GetAllUsers()
        {
            List<User> userList = new List<User>();
            string query = "select * from [User] ";
            string path = HttpContext.Current.Server.MapPath("~/App_Data/DailyCalorie.mdb");
            string connectionstring = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source =" + path;
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = connectionstring;
            con.Open();
            OleDbCommand cmd2 = new OleDbCommand(query, con);
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
            con.Close();
            return userList;
        }
    }
}