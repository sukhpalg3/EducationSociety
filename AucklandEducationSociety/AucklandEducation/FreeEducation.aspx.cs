using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FreeEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Set text in title bar
        Literal lt = Page.Master.FindControl("ltTitle") as Literal;
        lt.Text = "Free Educations, Books & Uniforms | Auckland Education Society";
    }
}