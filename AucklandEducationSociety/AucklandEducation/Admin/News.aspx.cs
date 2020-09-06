using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Text in title bar
            Literal lt = Page.Master.FindControl("LtTitle") as Literal;
            lt.Text = "Auckland Education Society | News";
            ViewNews(); //method calling to get all news on page load
        }
    }
    //Get all the News on page load
    private void ViewNews()
    {
        NZEduEntities data = new NZEduEntities();
        rptrNews.DataSource = data.NewsInfoes.ToList();
        rptrNews.DataBind();
    }

    //Add News 
    protected void lnknews_Click(object sender, EventArgs e)
    {
        try
        {
            string NewsHeadline, News, NewsDate;
            NewsHeadline = txtnewsheadline.Text.Trim();
            News = txtnews.Text.Trim();
            NewsDate = DateTime.Now.Date.ToString("dd-MM-yyyy");
            if (NewsHeadline=="" && News=="")
            {
                lblmsg.Text = "Please Fill all Fields!!";
            }
            else if (NewsHeadline=="")
            {
                lblmsg.Text = "Please Enter News Headlines!!";
            }
            else if (News=="")
            {
                lblmsg.Text = "please Enter News!!";
            }
            else
            {
                NewsInfoData data = new NewsInfoData();
                data.NewsHeadline = NewsHeadline;
                data.News = News;
                data.NewsDate = NewsDate;
                int ans = new NewsInfoAction().AddNews(data); //method calling to submit new News
                if(ans >0)
                {
                    txtnewsheadline.Text = "";
                    txtnews.Text = "";
                    ViewNews();
                    lblmsg.Text = "News submitted!";
                    
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    /// <summary>
    /// Edit and Delete News info
    /// </summary>
    protected void rptrNews_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            NZEduEntities n = new NZEduEntities();

            if (e.CommandName.Equals("del")) //Delete one news
            {
                int NewsID = int.Parse(e.CommandArgument.ToString());
                NewsInfo data = new NewsInfoAction().ViewNews(NewsID); // getting a News to delete
                if (data != null)
                {
                    n.NewsInfoes.Attach(data);
                    n.NewsInfoes.Remove(data);
                    n.SaveChanges();
                    ViewNews();
                    lblmsg.Text = "New Deleted!";
                }
            }
            if (e.CommandName.Equals("delall")) //Delete all news at once
            {
                var newsIds = from b in n.NewsInfoes select b.NewsID; // Get all news Id(s)
                foreach (var nid in newsIds)
                {
                    NewsInfo bt = new NewsInfo();
                    bt = n.NewsInfoes.Single(c => c.NewsID == nid); // lamda expression
                    n.NewsInfoes.Attach(bt);
                    n.NewsInfoes.Remove(bt);
                }
                n.SaveChanges();
                
                ViewNews();
                
            }
            if (e.CommandName.Equals("edit")) //Edit News info
            {
                int NewsID = int.Parse(e.CommandArgument.ToString());
                NewsInfo data = new NewsInfoAction().ViewNews(NewsID); // getting a News to delete
                
                if (data != null)
                {
                    lblnewsid.Text = data.NewsID.ToString();
                    txtnewsup.Text = data.News;
                    txtnewsheadup.Text = data.NewsHeadline;
                    Panel1.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    //close popup
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    //close popup
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }


    //Update news info after editing
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            string NewsHeadline, News, NewsID;
            NewsHeadline = txtnewsheadup.Text.Trim();
            News = txtnewsup.Text.Trim();
            NewsID = lblnewsid.Text;
             if (NewsHeadline=="")
            {
                lblmsgup.Text = "*Please Enter News Headlines!!";
            }
            else if (News=="")
            {
                lblmsgup.Text = "*please Enter News!!";
            }
            else
            {
                NewsInfoData data = new NewsInfoData();
                data.NewsHeadline = NewsHeadline;
                data.News = News;
                data.NewsID = int.Parse(NewsID);
                int result = new NewsInfoAction().UpdateNews(data); //method caling to update news
                if(result >0)
                {
                    ViewNews();
                    Panel1.Visible = false;
                    
                }
            }
        }
        catch (Exception ex)
        {
            lblmsgup.Text = ex.Message;
        }
    }
}