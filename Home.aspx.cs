using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Projecttest
{

    public partial class Home : System.Web.UI.Page
    {
        public string conString = "Data Source=DESKTOP-D518AQB\\SQLEXPRESS;Initial Catalog=projectDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
           // chkTerms.Checked = false;
        }

        protected void btnGetYourCoupon_Click(object sender, EventArgs e)
        {
            SqlConnection connectForAddCoupon = new SqlConnection(conString);
            connectForAddCoupon.Open();

            if ((chkTerms.Checked == true) && (chkNewsletter.Checked == true))
            {


                if (Page.IsValid)
                {
                    if (connectForAddCoupon.State == System.Data.ConnectionState.Open)
                    {
                        string signUpInsertDataQuery = "insert into promotionalCoupons (pin,email,bithdate,age,province,flavour) values('" +
                           txtPin.Text.ToString() + "','" +
                            txtEmail.Text.ToString() + "','" +
                            txtBirthday.Text.ToString() + "','" +
                            txtAge.Text.ToString() + "','" +
                            Request.Form["ddlProvince"].ToString() + "','" +
                            Request.Form["ddlFlavour"].ToString() + "')";
                        SqlCommand commandSignUp = new SqlCommand(signUpInsertDataQuery, connectForAddCoupon);
                        commandSignUp.ExecuteNonQuery();

                        Response.Write("Record inserted Successfully");
                    }
                }
            }
        }

      
    }
}