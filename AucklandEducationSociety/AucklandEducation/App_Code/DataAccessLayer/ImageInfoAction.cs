using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ImageInfoAction
/// </summary>
public class ImageInfoAction
{
    //Add Gallery images
    public int AddPhoto(ImageInfoData idata)
    {
        NZEduEntities apData = new NZEduEntities();
        ImageInfo data = new ImageInfo();

        data.ImageName = idata.ImageName;
        data.ImageExtension = idata.ImageName.Substring(idata.ImageName.LastIndexOf('.'));
        data.ImageSize = idata.ImageSize;
        data.ImageType = idata.ImageType;
        data.ImageDescription = idata.ImageDescription;
        apData.ImageInfoes.Add(data);
        int ans = apData.SaveChanges();

        return ans;
    }

   
    //Get one image Info
    public ImageInfo ViewPhoto1(int ImageID)
    {
        NZEduEntities data = new NZEduEntities();
        ImageInfo i = new ImageInfo();
        i = data.ImageInfoes.Single(c => c.ImageID == ImageID); // lamda expression
        return i;
    }

}