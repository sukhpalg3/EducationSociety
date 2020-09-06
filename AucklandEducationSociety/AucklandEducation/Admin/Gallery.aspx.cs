using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Text in title bar
            Literal lt = Page.Master.FindControl("LtTitle") as Literal;
            lt.Text = "Auckland Education Society | Gallery";
            ViewImages(); // method calling to view Gallery images on page load
        }
    }

    //Get all Gallery images
    private void ViewImages()
    {
        NZEduEntities data = new NZEduEntities();
        var img = from v in data.ImageInfoes select v;
        rptrGallery.DataSource = img.ToList();
        rptrGallery.DataBind();
    }


    //Add new Gallery image and info
    protected void lnkaddImage_Click(object sender, EventArgs e)
    {
        try
        {
            string ImageDescription = txtdescription.Text.Trim();
            if (ImageDescription=="")
            {
                lblmsg.Text = "*Please Enter Image Description";
            }
            else if (fufImage.HasFiles == false)
            {
                lblmsg.Text = " *Please select a file to upload";
            }
            else
            {
                foreach (var file in fufImage.PostedFiles)
                {

                    ImageInfoData data = new ImageInfoData();
                    data.ImageName = file.FileName;
                    data.ImageExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.ImageSize = file.ContentLength;
                    data.ImageType = file.ContentType;
                    data.ImageDescription = ImageDescription;

                    // only .jpeg or .png imgaes are allowed to upload
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/png")
                    {
                        System.Drawing.Image img = System.Drawing.Image.FromStream(file.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        if (height == 440 && width == 640) // images with specified dimensions to be uploaded
                        {
                            int id = new ImageInfoAction().AddPhoto(data); //Method calling to add galley image and info
                            if (id != 0)
                            {
                                string path = Server.MapPath("~/Image/Gallery/" + data.ImageSize+data.ImageName);
                                file.SaveAs(path);
                                ViewImages();
                                txtdescription.Text = "";
                                lblmsg.Text = " *Files is Uploaded! ";
                            }
                        }
                        else
                        {
                            lblmsg.Text = "Please choose  image(s) in proper dimensions 640 x 440";
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

    //Delete gallery images implementation here
    protected void rptrGallery_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            NZEduEntities data = new NZEduEntities();
            if (e.CommandName.Equals("del")) // delete one image
            {
                int ImageID = int.Parse(e.CommandArgument.ToString());
                ImageInfo bt = new ImageInfoAction().ViewPhoto1(ImageID); //method calling to get image info to delete
                if (bt != null)
                {
                    data.ImageInfoes.Attach(bt);
                    data.ImageInfoes.Remove(bt);
                    data.SaveChanges();

                        string path = Server.MapPath("~/Image/Gallery/" + bt.ImageSize.ToString() + bt.ImageName);
                        if (File.Exists(path))
                        {
                            File.Delete(path);
                            ViewImages();
                        }
                }
             }
            
            if (e.CommandName.Equals("delall")) // to delete all gallery images at once
            {
                var dbBannerId = from b in data.ImageInfoes select b.ImageID; // Get all image Id(s)

                string path;
                foreach (var Gid in dbBannerId)
                {
                    ImageInfo bt = new ImageInfo();
                    bt = data.ImageInfoes.Single(c => c.ImageID == Gid); // lamda expression


                    path = Server.MapPath("~/Image/Gallery/" + bt.ImageSize.ToString() + bt.ImageName);
                    if (File.Exists(path))
                    {
                        File.Delete(path);

                    }

                    data.ImageInfoes.Attach(bt);
                    data.ImageInfoes.Remove(bt);


                }

                data.SaveChanges();
                ViewImages();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}