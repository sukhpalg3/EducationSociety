using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ImageInfoData
/// </summary>
public class ImageInfoData
{
    int imageID, imageSize;
    string imageName, imageType, imageExtension, imageDescription;

    public int ImageID
    {
        get
        {
            return imageID;
        }

        set
        {
            imageID = value;
        }
    }

    public int ImageSize
    {
        get
        {
            return imageSize;
        }

        set
        {
            imageSize = value;
        }
    }

    public string ImageName
    {
        get
        {
            return imageName;
        }

        set
        {
            imageName = value;
        }
    }

    public string ImageType
    {
        get
        {
            return imageType;
        }

        set
        {
            imageType = value;
        }
    }

    public string ImageExtension
    {
        get
        {
            return imageExtension;
        }

        set
        {
            imageExtension = value;
        }
    }

    public string ImageDescription
    {
        get
        {
            return imageDescription;
        }

        set
        {
            imageDescription = value;
        }
    }

}