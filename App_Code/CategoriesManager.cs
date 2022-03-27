using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoriesManager
/// </summary>
public class CategoriesManager
{
	public CategoriesManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void Insert(string name)
    {
        string sql = "INSERT INTO categories (category_name) VALUES (@category_name)";
        SqlCommand cmd = new SqlCommand(sql);
        cmd.Parameters.AddWithValue("@category_name", name);
        DB.ExecuteCommand(cmd);
    }

    public static DataTable Select()
    {
        return DB.SelectData("SELECT * FROM categories"); ;
    }

}