using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {   //Set text in title bar
        Literal lt = Page.Master.FindControl("ltTitle") as Literal;
        lt.Text = "Image Gallery | Auckland Education Society";

        //Get all Galley images and info
        NZEduEntities data = new NZEduEntities();
        var image = from i in data.ImageInfoes select i;
        rptrimg.DataSource = image.ToList();
        rptrimg.DataBind();
    }
}