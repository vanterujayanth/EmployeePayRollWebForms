using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pay_Roll_Form
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetList();
            }

        }
        string connectionString = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";
        public void GetList()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("EmployeeList_sp", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                sda.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // SqlConnection conn = new SqlConnection(connectionString);
            //// int id = int.Parse(TextBox1.Text);
            // //  SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-HFJ7MFRU\SQLEXPRESS;Initial Catalog=""MY Test_DB"";Integrated Security=True;TrustServerCertificate=True");
            //// string conn = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";
            // conn.Open();
            // SqlCommand co = new SqlCommand("execute search_SP '" + id + "' ", conn);
            // SqlDataAdapter sd = new SqlDataAdapter(co);
            // DataTable dt = new DataTable();
            // sd.Fill(dt);
            // GridView2.DataSource = dt;
            // GridView2.DataBind();
            Response.Redirect("SearchDetails.aspx");
        }

    }
}