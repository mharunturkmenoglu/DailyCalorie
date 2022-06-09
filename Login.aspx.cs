using DailyCalorie.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DailyCalorie
{
    public partial class Home : System.Web.UI.Page
    {
        private Context context = new Context();
        List<CartDetails> cartDetails = new List<CartDetails>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = emailTxt.Value.ToString();
            string surname = passwordTxt.Value.ToString();

            foreach (var user in context.GetAllUsers())
            {
                if (name == user.Name && surname == user.Password)
                {
                    HttpCookie cookie = new HttpCookie("cookiefile");
                    cookie["Name"] = user.Name;
                    cookie["Surname"] = user.Password;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                    Response.Redirect("Home.aspx", true);
                    List<CartDetails> cartDetailsList = new List<CartDetails>();
                    Session["CartDetails"] = cartDetailsList;
                }
            }
        }
    }
}