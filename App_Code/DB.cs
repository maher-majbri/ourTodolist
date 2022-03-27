using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DB
/// </summary>
public class DB
{

    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ToString());

    public DB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    static void OpenCon()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }

    static void CloseCon()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public static DataTable SelectData(string sql)
    {
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public static DataTable SelectData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.SelectCommand.Connection = con;
        da.Fill(dt);
        return dt;
    }

    public static void ExecuteCommand(SqlCommand cmd)
    {
        cmd.Connection = con;
        OpenCon();
        cmd.ExecuteNonQuery();
        CloseCon();
    }


}