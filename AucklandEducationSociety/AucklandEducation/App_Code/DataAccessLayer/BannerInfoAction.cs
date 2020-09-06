using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BannerInfoAction
/// </summary>
public class BannerInfoAction
{
    //Add Banner / slider Image
    public int AddPhoto(BannerInfoData Bidata)
    {
        NZEduEntities apData = new NZEduEntities();
        BannerInfo data = new BannerInfo();

        data.BannerName = Bidata.BannerName;
        data.BannerExtension = Bidata.BannerName.Substring(Bidata.BannerName.LastIndexOf('.'));
        data.BannerSize = Bidata.BannerSize;
        data.BannerType = Bidata.BannerType;

        apData.BannerInfoes.Add(data);
        int ans = apData.SaveChanges();
        return ans;
        
    }
   
    //Get one Banner info from the supplied bannerId
    public BannerInfo ViewPhoto1(int BannerID)
    {
        NZEduEntities data = new NZEduEntities();

        BannerInfo bt = new BannerInfo();
        bt = data.BannerInfoes.Single(c => c.BannerID == BannerID); // lamda expression
        return bt;
    }

    
}