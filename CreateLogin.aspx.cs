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
    public partial class CreateLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            empUname_TextBox.Text = empPass_TextBox.Text = adminPass_TextBox.Text = string.Empty;
        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            String strcon = "Data Source=HARISH\\SQLEXPRESS;Initial Catalog=pcsa107;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Login WHERE EmpID=@EmpID AND Password=@Password";
            cmd.Parameters.AddWithValue("@EmpID", Session["user"].ToString());
            cmd.Parameters.AddWithValue("@Password", adminPass_TextBox.Text);
            cmd.Connection = con;
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                dr.Close();

                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "SELECT * FROM Login WHERE EmpID=@EmpID";
                cmd1.Parameters.AddWithValue("@EmpID", empUname_TextBox.Text);
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                Response.Write(""+dr1.Read().ToString());

                if (dr1.HasRows)
                {
                    logMsg.Text = "This User already exists!!";
                }
                else
                {
                    dr1.Close();
                    SqlCommand cmd2 = new SqlCommand("INSERT INTO Login VALUES('" + empUname_TextBox.Text + "','" + empPass_TextBox.Text + "')", con);
                    cmd2.ExecuteNonQuery();

                    SqlCommand cmd3 = new SqlCommand("INSERT INTO GeneralInfo(EmpID) VALUES('" + empUname_TextBox.Text + "')", con);
                    cmd3.ExecuteNonQuery();

                    SqlCommand cmd4 = new SqlCommand("INSERT INTO Achievements(EmpID) VALUES('" + empUname_TextBox.Text + "')", con);
                    cmd4.ExecuteNonQuery();

                    logMsg.Text = "New User created successfully!!";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ALERT:", "alert('New User Created Successfully')", true);
                }
                con.Close();
            }
            else
            {
                logMsg.Text = "Incorrect Administrator Password!";
                con.Close();
            }
        }        
    }
}