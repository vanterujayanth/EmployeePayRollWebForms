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
    public partial class DeleteDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "refresh", "window.setTimeout('window.location.reload(true);',60000);", true);
            if (Session["Id"] != null)
            {
                delete();
                Response.Redirect("EmployeeList.aspx");
            }


        }

        void delete()
        {
            string connectionstring = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection conn = new SqlConnection(connectionstring))
            {

                SqlCommand cmd = new SqlCommand("DeleteDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                int Id = (int)Session["Id"];
                cmd.Parameters.AddWithValue("@EmployeeId", Id);
                conn.Open();
                cmd.ExecuteNonQuery();
            }


        }
    }
}