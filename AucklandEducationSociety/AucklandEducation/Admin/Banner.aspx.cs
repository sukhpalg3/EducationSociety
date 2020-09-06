using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Banner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Text in title bar
            Literal lt = Page.Master.FindControl("LtTitle") as Literal;
            lt.Text = "Auckland Education Society | Banner";
            ViewBanner(); // method calling to get all banners on page load
        }
    }

    //Get all the banner images
    private void ViewBanner()
    {
        NZEduEntities data = new NZEduEntities();
        rptrBanner.DataSource = data.BannerInfoes.ToList();
        rptrBanner.DataBind();
    }

    // Add Banner / slider images
    protected void lnkaddBanner_Click(object sender, EventArgs e)
    {
        try
        {

            if (fufBanner.HasFiles == false)
            {
                lblmsg.Text = " Please select a file to upload";
            }
            else
            {
                foreach (var file in fufBanner.PostedFiles) // you can upload multiple images at once
                {

                    BannerInfoData data = new BannerInfoData();
                    data.BannerName = file.FileName;
                    data.BannerExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.BannerSize = file.ContentLength;
                    data.BannerType = file.ContentType;

                    // Image file formats with (.jpeg or .png) are allowed
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/png")
                    {
                        System.Drawing.Image img = System.Drawing.Image.FromStream(file.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        if (height == 500 && width == 1350) // specified dimensions for image
                        {
                            int id = new BannerInfoAction().AddPhoto(data); //method calling to add banner images
                            if (id != 0)
                            {
                                string path = Server.MapPath("~/Image/Banner/" + data.BannerSize+ data.BannerName);
                                file.SaveAs(path);
                                ViewBanner();

                                lblmsg.Text = " Files is Uploaded! ";
                            }
                        }
                        else
                        {
                            lblmsg.Text = "Please choose  image(s) in proper dimensions 1350 x 500";
                        }
                    }
                    else
                    {
                        lblmsg.Text = "Please choose a .JPEG or .PNG file only";
                    }

                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void rptrBanner_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            NZEduEntities data = new NZEduEntities();
            if (e.CommandName.Equals("del")) // to delete any banner image
            {
                int BannerID = int.Parse(e.CommandArgument.ToString());
               
                BannerInfo bt = new BannerInfoAction().ViewPhoto1(BannerID); // retrive the info for the banner
                if (bt != null)
                {
                    data.BannerInfoes.Attach(bt); 
                    data.BannerInfoes.Remove(bt); // remove banner info from db
                    data.SaveChanges();

                    string path = Server.MapPath("~/Image/Banner/" + bt.BannerSize.ToString() + bt.BannerName);
                    if (File.Exists(path))
                    {
                         File.Delete(path); //delete the image from path
                         ViewBanner(); // bind the banners again
                        lblmsg.Text = "Banner Deleted!";
                    }
                    
                }
            }
            if (e.CommandName.Equals("delall")) // to delete all the banners at once
            {
                var dbBannerId = from b in data.BannerInfoes select b.BannerID; // Get all Banner Id(s)

                string path;
                foreach (var bid in dbBannerId)
                {
                    BannerInfo bt = new BannerInfo();
                    bt = data.BannerInfoes.Single(c => c.BannerID == bid); // lamda expression


                    path = Server.MapPath("~/Image/Banner/" + bt.BannerSize.ToString() + bt.BannerName);
                    if (File.Exists(path))
                    {
                        File.Delete(path); // remove images from the path

                    }

                    data.BannerInfoes.Attach(bt);
                    data.BannerInfoes.Remove(bt); // remove banners info


                }

                data.SaveChanges();
                ViewBanner(); // method calling
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
