using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pay_Roll_Form.Pages
{
    public partial class SearchDetails : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            string JoiningDate = TextBox5.Text;
            string JoiningDate1 = TextBox6.Text;
            //DateTime Date =DateTime.Parse ( TextBox5.Text);
            //DateTime Date1 = DateTime.Parse(TextBox6.Text);
            // int id = int.Parse(TextBox1.Text);
            //  SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-HFJ7MFRU\SQLEXPRESS;Initial Catalog=""MY Test_DB"";Integrated Security=True;TrustServerCertificate=True");
            // string conn = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";
            conn.Open();
            //SqlCommand co = new SqlCommand("execute search_SP '" + id + "' ", conn);
            SqlCommand co = new SqlCommand("SearchByDate '" + JoiningDate + "','"+ JoiningDate1 + "'", conn);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

       
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
