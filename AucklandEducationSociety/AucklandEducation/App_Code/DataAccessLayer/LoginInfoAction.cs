using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;

/// <summary>
/// Summary description for LoginInfoAction
/// </summary>
public class LoginInfoAction
{
    /// <summary>
    /// To perform admin Login
    /// </summary>
    public LoginInfo login(LoginInfoData liData)
    {
        NZEduEntities data = new NZEduEntities();
        LoginInfo li = new LoginInfo();
       
        // linq query
        li = (from login in data.LoginInfoes
              where login.UserName == liData.Username & login.Password == liData.Password select login).Single();
        return li;
    }

    /// <summary>
    /// To Change admin Password
    /// </summary>
    public bool changepassword(LoginInfoData lidata)
    {
        NZEduEntities data = new NZEduEntities();
        LoginInfo li = new LoginInfo();
        bool ans = false;

        //Get loginInfo using old password
        li = (from l in data.LoginInfoes where l.UserID == lidata.Userid where l.Password == lidata.Oldpassword select l).FirstOrDefault();
        if (li != null)
        {
            var info = from l in data.LoginInfoes
                        where l.UserID == lidata.Userid
                        select l;
            foreach (LoginInfo li1 in info)
            {
                li1.Password = lidata.Password; //set new password for the same   
            }
             ans = true;
        }
        else if (li == null)
        {
             ans = false;
           
        }
        data.SaveChanges(); // ans save the changes

        return ans;

    }
}