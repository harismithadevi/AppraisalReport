using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Appraisal
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            uname_TextBox.Text = pass_TextBox.Text = string.Empty;
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            String strcon = "Data Source=HARISH\\SQLEXPRESS;Initial Catalog=pcsa107;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Login WHERE EmpID=@EmpID and Password=@Password";
            cmd.Parameters.AddWithValue("@EmpID", uname_TextBox.Text);
            cmd.Parameters.AddWithValue("@Password", pass_TextBox.Text);
            cmd.Connection = con;
            con.Open();
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                logMsg.Text = "Login Successful!";
                Session["user"] = uname_TextBox.Text;
                con.Close();

                if (uname_TextBox.Text.StartsWith("admin"))
                {
                    Response.Redirect("AdminHome.aspx");
                }
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                logMsg.Text = "Invalid Credentials!!";
                con.Close();
            }           
        }
    }
}