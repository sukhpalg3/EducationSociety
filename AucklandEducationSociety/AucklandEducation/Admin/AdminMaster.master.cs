using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if session not available then re-direct to login page
        if (Session["Username"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            lblusernamelogin.Text = Session["Username"].ToString(); // set user name on lable after login
        }
    }

    //LogOut the session for the admin
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }

    //LogOut the session for the admin
    protected void lnklogout1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
