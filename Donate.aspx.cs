using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System;

namespace DailyCalorie
{
    public partial class Donate : System.Web.UI.Page
    {
        string strCard_Type;
        public string IsValidCardType(string cardNumber)
        {
            // AMEX -- 34 or 37 -- 15 length
            if (Regex.IsMatch(cardNumber, "^(34|37)"))
            {
                return "Amex";
            }

            // MasterCard -- 51 through 55 -- 16 length
            else if (Regex.IsMatch(cardNumber, "^(51|52|53|54|55)"))
                return "Mastercard";

            // VISA -- 4 -- 13 and 16 length
            else if (Regex.IsMatch(cardNumber, "^(4)"))
                return "Visa";

            // Diners Club -- 300-305, 36 or 38 -- 14 length
            else if (Regex.IsMatch(cardNumber, "^(300|301|302|303|304|305|36|38)"))
            {
                return "Other";
            }

            // enRoute -- 2014,2149 -- 15 length
            else if (Regex.IsMatch(cardNumber, "^(2014|2149)"))
            {
                return "Other";
            }

            // Discover -- 6011 -- 16 length
            else if (Regex.IsMatch(cardNumber, "^(6011)"))
            {
                return "Discover";
            }

            // JCB -- 3 -- 16 length
            else if (Regex.IsMatch(cardNumber, "^(3)"))
            {
                return "Other";
            }


            // JCB -- 2131, 1800 -- 15 length
            else if (Regex.IsMatch(cardNumber, "^(2131|1800)"))
            {
                return "Other";
            }
            else
            {
                return " ";
            }
        }
        static bool checkLuhn(string cardNo)
        {
            int nDigits = cardNo.Length;

            int nSum = 0;
            bool isSecond = false;
            for (int i = nDigits - 1; i >= 0; i--)
            {

                int d = cardNo[i] - '0';

                if (isSecond == true)
                    d = d * 2;

                // We add two digits to handle
                // cases that make two digits
                // after doubling
                nSum += d / 10;
                nSum += d % 10;

                isSecond = !isSecond;
            }
            return (nSum % 10 == 0);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            imgCard_Type.ImageUrl = "/images/visa.png";
            imgCard_Type0.ImageUrl = "/images/mastercard.png";
            imgCard_Type1.ImageUrl = "/images/amex.png";
            imgCard_Type2.ImageUrl = "/images/discover.png";

            imgCard_Type.Visible = true;
            imgCard_Type0.Visible = true;
            imgCard_Type1.Visible = true;
            imgCard_Type2.Visible = true;

        }

        public void txtCredit_Card_Number_TextChanged(object sender, EventArgs e)
        {
            if (checkLuhn(txtCredit_Card_Number.Text))
            {
                lblHataMesaji.Visible = false;
                strCard_Type = IsValidCardType(txtCredit_Card_Number.Text);
                txtCredit_Card_Number.BackColor = System.Drawing.Color.White;

                if (strCard_Type == "Visa")
                {
                    imgCard_Type.Visible = true;
                    imgCard_Type0.Visible = false;
                    imgCard_Type1.Visible = false;
                    imgCard_Type2.Visible = false;
                    imgCard_Type.ImageUrl = "/images/visa.png";

                }
                else if (strCard_Type == "Mastercard")
                {
                    imgCard_Type.Visible = false;
                    imgCard_Type0.Visible = true;
                    imgCard_Type1.Visible = false;
                    imgCard_Type2.Visible = false;
                    imgCard_Type.ImageUrl = "/images/visa.png";
                }
                else if (strCard_Type == "Amex")
                {
                    imgCard_Type.Visible = false;
                    imgCard_Type0.Visible = false;
                    imgCard_Type1.Visible = true;
                    imgCard_Type2.Visible = false;
                    imgCard_Type.ImageUrl = "/images/amex.png";
                }
                else if (strCard_Type == "Discover")
                {
                    imgCard_Type.Visible = false;
                    imgCard_Type0.Visible = false;
                    imgCard_Type1.Visible = false;
                    imgCard_Type2.Visible = true;
                    imgCard_Type.ImageUrl = "/images/discover.png";
                }
                else
                {
                    //Bu kısımda ise geçersiz kart numarası olduğunda kartların görünürlüğünü kapatıyoruz
                    imgCard_Type.Visible = false;
                    imgCard_Type0.Visible = false;
                    imgCard_Type1.Visible = false;
                    imgCard_Type2.Visible = false;
                }
            }

            else
            {
                imgCard_Type.Visible = false;
                imgCard_Type0.Visible = false;
                imgCard_Type1.Visible = false;
                imgCard_Type2.Visible = false;


                lblHataMesaji.Visible = true;
                txtCredit_Card_Number.BackColor = System.Drawing.Color.Red;

                lblHataMesaji.Text = "Invalid Card Number ! Please check it again...";

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtCredit_Card_Number.Text = "";
            txtCVV.Text = "";
            txtMonth.Text = "";
            txtYear.Text = "";
            txtName.Text = "";

        }


    }
}

    