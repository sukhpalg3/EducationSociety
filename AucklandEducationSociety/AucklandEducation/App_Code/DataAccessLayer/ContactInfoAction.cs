using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ContactInfoAction
/// </summary>
public class ContactInfoAction
{
    //This method will send EnquiryInfo to Admin in admin panel
    public int AddContactInfo(ContactInfo ciData)
    {
        // bool ans = false;
        NZEduEntities data = new NZEduEntities();
        Contact ni = new Contact();

        ni.Name = ciData.Name;
        ni.Phone = ciData.Mobile;
        ni.Subject = ciData.Subject;
        ni.Message = ciData.Msg;
        data.Contacts.Add(ni);
        int ans = data.SaveChanges();
        return ans;
    }

    //Get one enquiry
    public Contact ViewEnquiry(int id)
    {
        NZEduEntities data = new NZEduEntities();

        Contact ct = new Contact();
        ct = data.Contacts.Single(c => c.id == id); // lamda expression
        return ct;
    }
}