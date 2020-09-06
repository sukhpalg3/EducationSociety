using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsInfoData
/// </summary>
public class NewsInfoData
{
    int newsID;
    string newsHeadline, news, newsDate;
    public int NewsID
    {
        get
        {
            return newsID;
        }

        set
        {
            newsID = value;
        }
    }

    public string NewsHeadline
    {
        get
        {
            return newsHeadline;
        }

        set
        {
            newsHeadline = value;
        }
    }

    public string News
    {
        get
        {
            return news;
        }

        set
        {
            news = value;
        }
    }

    public string NewsDate
    {
        get
        {
            return newsDate;
        }

        set
        {
            newsDate = value;
        }
    }


}