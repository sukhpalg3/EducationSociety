using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            // Set Text in title bar
            Literal lt = Page.Master.FindControl("LtTitle") as Literal;
            lt.Text = "NZ Education Society | Change Password";

            BindEnquiry(); //method calling to Get all the eqnuiries on page load
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    //Get all the Enquiries received
    private void BindEnquiry()
    {
        NZEduEntities data = new NZEduEntities();
        rptrEnquiry.DataSource = data.Contacts.ToList(); // Get all the contacts / enquiries here
        rptrEnquiry.DataBind();
    }


    //Delete Enquiry implementation
    protected void rptrEnquiry_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            NZEduEntities n = new NZEduEntities();

            if (e.CommandName.Equals("del")) // delete one enquiry
            {
                int NewsID = int.Parse(e.CommandArgument.ToString());
                Contact data = new ContactInfoAction().ViewEnquiry(NewsID); // getting a News to delete
                if (data != null)
                {
                    n.Contacts.Attach(data);
                    n.Contacts.Remove(data);
                    n.SaveChanges();
                    BindEnquiry();
                    lblmsg.Text = "*Enquiry Deleted!";
                }
            }
            if (e.CommandName.Equals("delall")) // delete all enquiries
            {
                var ctid = from b in n.Contacts select b.id; // Get all enquiry Id(s)
                foreach (var nid in ctid)
                {
                    Contact bt = new Contact();
                    bt = n.Contacts.Single(c => c.id == nid); // lamda expression
                    n.Contacts.Attach(bt);
                    n.Contacts.Remove(bt);
                }
                n.SaveChanges();

                BindEnquiry(); // method calling

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}