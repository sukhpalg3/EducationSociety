using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginInfoData
/// </summary>
public class LoginInfoData
{
    int userid;
    string username, password,oldpassword, email, securityQuestion, securityAnswer;
    public string Username
    {
        get
        {
            return username;
        }

        set
        {
            username = value;
        }
    }

    public string Password
    {
        get
        {
            return password;
        }

        set
        {
            password = value;
        }
    }

    public string Oldpassword
    {
        get
        {
            return oldpassword;
        }

        set
        {
            oldpassword = value;
        }
    }

    public string Email
    {
        get
        {
            return email;
        }

        set
        {
            email = value;
        }
    }

    public string SecurityQuestion
    {
        get
        {
            return securityQuestion;
        }

        set
        {
            securityQuestion = value;
        }
    }

    public string SecurityAnswer
    {
        get
        {
            return securityAnswer;
        }

        set
        {
            securityAnswer = value;
        }
    }

    public int Userid
    {
        get
        {
            return userid;
        }

        set
        {
            userid = value;
        }
    }


}