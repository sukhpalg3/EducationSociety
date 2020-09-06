using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for dataconnection
/// </summary>
public class DataConnection
{

    private static SqlConnection con = null;

    private DataConnection() { }

    public static SqlConnection GetConnection() //establish connection with database server
    {
        if (con == null)
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con.Open();
        }
        else if (con != null && con.State == ConnectionState.Closed)
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con.Open();
        }
        return con;
    }

    public static void CloseConnection() //close the connection with db server
    {
        if (con != null)
        {
            con.Dispose();
        }
        con = null;
    }
}