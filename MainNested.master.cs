using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appraisal
{
    public partial class MainNested : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userlbl.Text = Session["user"].ToString();
        }
    }
}