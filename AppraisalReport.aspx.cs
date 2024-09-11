using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System.Data;

namespace Appraisal
{
    public partial class AppraisalReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reportBtn_Click(object sender, EventArgs e)
        {
            String strcon = "Data Source=HARISH\\SQLEXPRESS;Initial Catalog=pcsa107;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Achievements A INNER JOIN GeneralInfo G ON A.EmpID=G.EmpID WHERE A.EmpID = @EmpID; ";
            cmd.Parameters.AddWithValue("@EmpID", Session["user"].ToString());
            cmd.Connection = con;
            

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            ReportDocument report = new ReportDocument();
            report.Load(Server.MapPath("~/ApReport.rpt"));
            report.SetDataSource(ds.Tables[0]);

            CrystalReportViewer1.ReportSource = report;
            report.ExportToHttpResponse(ExportFormatType.PortableDocFormat,Response,false,"AppraisalReport_"+Session["user"].ToString());
        }
    }
}