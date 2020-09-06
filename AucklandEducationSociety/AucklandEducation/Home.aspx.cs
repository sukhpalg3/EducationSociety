using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Set text in title bar
        Literal lt = Page.Master.FindControl("ltTitle") as Literal;
        lt.Text = "Home | Auckland Education Society";
        
        //Get all banner / slider images on page load
        NZEduEntities data = new NZEduEntities();
        var ban = from b in data.BannerInfoes select b;
        rptrbanner.DataSource = ban.ToList();
        rptrbanner.DataBind();
    }
}