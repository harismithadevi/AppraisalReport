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
    public partial class EditStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.Visible = false;
        }

        protected void EnterButton_Click(object sender, EventArgs e)
        {
            if(SqlDataSourceEdit != null)
            {
                FormView1.Visible = true;
            }
            else
            {
                editMsg.Text = "--Record Not Found!--";
            }
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            //FormView1.DataSource = SqlDataSourceEdit;
            FormView1.DataBind();

            FormView1.ChangeMode(FormViewMode.ReadOnly);

            editMsg.Text = "--Record Updated Successfully!--";

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ALERT:", "alert('Record Updated Successfully')", true);            
        }

        protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {

            String strcon = "Data Source=HARISH\\SQLEXPRESS;Initial Catalog=pcsa107;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "DELETE FROM Achievements WHERE EmpID=@EmpID";
            cmd2.Parameters.AddWithValue("@EmpID", ID_TextBox.Text);
            cmd2.Connection = con;
            cmd2.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "DELETE FROM Login WHERE EmpID=@EmpID";
            cmd1.Parameters.AddWithValue("@EmpID", ID_TextBox.Text);
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();

            con.Close();

        }
        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            editMsg.Text = "--Record Deleted Successfully!--";

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ALERT:", "alert('Record Deleted Successfully')", true);
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            FormView1.DataBind();            
        }




        /*
        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            
            String strcon = "Data Source=HARISH\\SQLEXPRESS;Initial Catalog=pcsa107;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandText = "SELECT * FROM GeneralInfo WHERE EmpID=@EmpID";
            cmd3.Parameters.AddWithValue("@EmpID", ID_TextBox.Text);
            cmd3.Connection = con;
            
            SqlDataReader dr = cmd3.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DoATextBox.Text = (Convert.ToDateTime(dr["DoA"]).ToString("yyyy-MM-dd"));
                }
            }
            con.Close();
            
        }*/
    }
}