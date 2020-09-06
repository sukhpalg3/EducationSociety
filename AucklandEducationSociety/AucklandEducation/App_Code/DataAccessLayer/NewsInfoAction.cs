using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsInfoAction
/// </summary>
public class NewsInfoAction
{
    //Add news info
    public int AddNews(NewsInfoData Nidata)
    {
      
        NZEduEntities apData = new NZEduEntities();
        NewsInfo data = new NewsInfo();

        data.News = Nidata.News;
        data.NewsDate = Nidata.NewsDate;
        data.NewsHeadline = Nidata.NewsHeadline;

        apData.NewsInfoes.Add(data);
       int ans= apData.SaveChanges();
        return ans;
    }

    //Update news info
    public int UpdateNews(NewsInfoData data)
    {
        NZEduEntities nidata = new NZEduEntities();
        NewsInfo ni = new NewsInfo();

        var nsd = from p in nidata.NewsInfoes where p.NewsID == data.NewsID select p;
        foreach (NewsInfo nifo in nsd)
        {
            nifo.NewsID = data.NewsID;
            nifo.NewsHeadline = data.NewsHeadline;
            nifo.News = data.News;
            nifo.NewsDate = data.NewsDate;
        }
        int ans = nidata.SaveChanges();
        return ans;
    }

  
    //Get one News
    public NewsInfo ViewNews(int NewsID)
    {
        NZEduEntities data = new NZEduEntities();

        NewsInfo bt = new NewsInfo();
        bt = data.NewsInfoes.Single(c => c.NewsID == NewsID); // lamda expression
        return bt;
    }

}