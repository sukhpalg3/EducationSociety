using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //Admin login implementation
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            
            string username, password;
            username = txtusername.Text.Trim();
            password = txtpassword.Text.Trim();

            if (username=="")
            {
                lblmsg.Text = "Please Enter Username!!";
            }
            else if (password=="")
            {
                lblmsg.Text = "Please Enter Password!!";
            }
            else 
            {
                LoginInfoData data = new LoginInfoData(); //send data to class
                data.Username = username;
                data.Password = password;

                LoginInfo li = new LoginInfoAction().login(data); // method calling for login

                if (li != null)
                {
                    Session["Username"] = username; //create session for user
                    Session["UserID"] = li.UserID;
                    Session["Loginstatus"] = true;
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "Invalid Username Or Password!!";
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}