using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Appraisal
{
    public partial class EditAchievements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ALERT:", "alert('Record Updated Successfully')", true);
        }
    }
}