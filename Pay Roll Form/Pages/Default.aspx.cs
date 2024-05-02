using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pay_Roll_Form
{
    public partial class _Default : Page
    {
        protected void Button_Login(object sender, EventArgs e)
        {

            Response.Redirect("Login.aspx");
        }

        protected void Button_Register(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}