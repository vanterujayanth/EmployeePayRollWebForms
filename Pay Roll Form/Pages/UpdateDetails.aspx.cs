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
    public partial class UpdateDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null)
                {
                    Get();

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }


        void Get()
        {

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetEmployeeByName", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                string Name = (string)Session["Name"];
                cmd.Parameters.AddWithValue("@Name", Name);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = (string)dr["Name"];
                    RadioButtonList1.Text = (string)dr["Gender"];
                    DropDownList1.Text = (string)dr["Department"];
                    TextBox3.Text = (dr["Salary"]).ToString();
                    TextBox4.Text = (string)dr["Notes"];
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        string connectionString = @"Data Source=DESKTOP-2GMEK14\SQLEXPRESS;Initial Catalog=""webForms"";Integrated Security=True;TrustServerCertificate=True";

        protected void Button_Update(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {

                SqlCommand cmd = new SqlCommand("updateDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                int Id = (int)Session["Id"];
                string Name = TextBox1.Text;
                string ProfileImage = "";
                if (RadioButton1.Checked)
                {
                    ProfileImage = Image1.ImageUrl;
                }
                if (RadioButton2.Checked)
                {
                    ProfileImage = Image2.ImageUrl;
                }
                if (RadioButton3.Checked)
                {
                    ProfileImage = Image3.ImageUrl;
                }
                if (RadioButton4.Checked)
                {
                    ProfileImage = Image4.ImageUrl;
                }
                string Gender = RadioButtonList1.SelectedValue;
                string Department = DropDownList1.SelectedValue;
                int Salary = int.Parse(TextBox4.Text);
                string JoiningDate = TextBox5.Text;
                string Notes = TextBox3.Text;
                cmd.Parameters.AddWithValue("@EmployeeId", Id);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@ProfileImage", ProfileImage);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Department", Department);
                cmd.Parameters.AddWithValue("@Salary", Salary);
                cmd.Parameters.AddWithValue("@JoiningDate", JoiningDate);
                cmd.Parameters.AddWithValue("@Notes", Notes);
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("UserDetails");
            }
        }
    }
}