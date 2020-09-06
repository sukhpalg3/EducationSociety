
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set Text in title bar
        Literal lt = Page.Master.FindControl("LtTitle") as Literal;
        lt.Text = "Auckland Education Society | Dashboard";
        
        
    }
}