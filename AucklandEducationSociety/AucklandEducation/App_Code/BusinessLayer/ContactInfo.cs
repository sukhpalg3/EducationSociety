using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ContactInfo
/// </summary>
public class ContactInfo
{
    private int id;
    private string name, msg, mobile, subject;

    public int Id
    {
        get
        {
            return id;
        }

        set
        {
            id = value;
        }
    }

    public string Name
    {
        get
        {
            return name;
        }

        set
        {
            name = value;
        }
    }

    public string Msg
    {
        get
        {
            return msg;
        }

        set
        {
            msg = value;
        }
    }

    public string Mobile
    {
        get
        {
            return mobile;
        }

        set
        {
            mobile = value;
        }
    }

    public string Subject
    {
        get
        {
            return subject;
        }

        set
        {
            subject = value;
        }
    }
}