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
            calorietext.Visible = false;
        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {
            
            int age = Int32.Parse(ageTextbox.Text);
            int weightKg = Int32.Parse(weightTextbox.Text);
            int heightSm = Int32.Parse(heightTextbox.Text);

            int gender = genderListbox.SelectedIndex;
            int workoutsPerWeek = workoutsListBox.SelectedIndex;
            
            decimal BMR =CalculateBMR(age,weightKg,heightSm,gender);
            decimal DCI=CalculateDCI(BMR,workoutsPerWeek);

            calorietext.Visible=true;
            calorietext.InnerText = "Your Daily Calorie Is: " + Math.Floor(DCI).ToString();

            Session["Calorie"] = Math.Floor(DCI);
        }

        private decimal CalculateDCI(decimal BMR , int workoutsPerWeek)
        {
            decimal DCI = 0;
            if (workoutsPerWeek == 0)
            {
                DCI = (BMR * 1.2m);
            }
            else if (workoutsPerWeek == 1)
            {
                DCI = (BMR * 1.375m);
            }
            else if (workoutsPerWeek == 2)
            {
                DCI = (BMR * 1.55m);
            }
            else if (workoutsPerWeek == 3)
            {
                DCI = (BMR * 1.725m);
            }
            else if (workoutsPerWeek == 4)
            {
                DCI = (BMR * 1.9m);
            }

            return DCI;
        }

        private decimal CalculateBMR(int age , int weightKg ,int heightSm,int gender)
        {
            decimal BMR = 0;
            if (gender == 0)
            {
                BMR = (66.5m + (13.75m * weightKg) + (5.003m * heightSm) - (6.755m * age));
            }
            else if (gender == 1)
            {
                BMR = (655 + (9.563m * weightKg) + (1.850m * heightSm) - (4.676m * age));
            }
            return BMR;
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}