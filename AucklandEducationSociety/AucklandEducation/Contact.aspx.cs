using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Set text in title bar
        Literal lt = Page.Master.FindControl("ltTitle") as Literal;
        lt.Text = "Contact Us | Auckland Education Society";
        lblmsg.Text = "";
    }


    //Submit the enquiry / contact info to admin
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string name, mobile, msg, subject;

            mobile = txtEmail.Text.Trim();
            name = txtFirstName.Text.Trim() + " " + txtLastName.Text.Trim();
            subject = txtSubject.Text.Trim();
            msg = txtMessage.Text.Trim();

            if (name=="")
            {
                lblmsg.Text = "Please enter your name";

            }

            else if (mobile=="")
            {
                lblmsg.Text = "Please enter your mobile number";
            }
            
            else if (subject=="")
            {
                lblmsg.Text = "Please enter your subject";
            }
            else
            {
                ContactInfo data = new ContactInfo(); //add data to class
                data.Mobile = mobile;

                data.Msg = msg;
                data.Name = name;
                data.Subject = subject;
               
                int ans = new ContactInfoAction().AddContactInfo(data); //method calling to add enquiry
                if (ans > 0)
                {
                    txtEmail.Text = "";
                    txtFirstName.Text = "";
                    txtLastName.Text = "";
                    txtSubject.Text = "";
                    txtMessage.Text = ""; ;
                    lblmsg.Text = "Thank you for contacting us. We will be right back to you shortly.";
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}