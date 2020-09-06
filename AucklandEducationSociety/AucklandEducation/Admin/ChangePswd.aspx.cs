using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Text in title bar
            Literal lt = Page.Master.FindControl("LtTitle") as Literal;
            lt.Text = "Auckland Education Society | Change Password";
        }
    }

    //Change admin password implementation
    protected void lnkaddchnge_Click(object sender, EventArgs e)
    {  
        try
        {
            string oldpassword, newpassword, confirmpassword;
            oldpassword = txtoldpswd.Text.Trim();
            newpassword = txtnewpswd.Text.Trim();
            confirmpassword = txtnewpswd.Text.Trim();
            if( oldpassword=="" && newpassword=="" && confirmpassword=="")
            {
                lblmsg.Text = "*Please Fill all Fields!!";
            }
            else if (oldpassword=="")
            {
                lblmsg.Text = "*Please Enter Old Password!!";
            }
            else if (newpassword=="")
            {
                lblmsg.Text = "*Please Enter New Password!!";
            }
            else if (confirmpassword=="")
            {
                lblmsg.Text = "*Please Enter confirm Password!!";
            }
            else if (newpassword != confirmpassword)
            {
                lblmsg.Text = "*Password Doesn't matched!!";
            }
            else if (newpassword == confirmpassword && oldpassword!="" && newpassword !="" && confirmpassword !="")
            {
                LoginInfoData data = new LoginInfoData();
                if (Session["UserID"] != null)
                {
                    data.Userid = int.Parse(Session["UserID"].ToString());
                    data.Password = newpassword;
                    data.Oldpassword = oldpassword;

                    bool result = new LoginInfoAction().changepassword(data); //change password method calling

                    if(result == true)
                    {
                        lblmsg.Text = "*Password Change Successfully!!";
                    }
                    else
                    {
                        lblmsg.Text = "*Old Password Is Incorrect!!";
                    }
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}