using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemsManager
/// </summary>
public class TasksManager
{
	public TasksManager()

	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void Insert(string txt , string state , int pr, int category)
    {
        string sql = "INSERT INTO tasks (task_text,task_state,task_priority,category_id) VALUES (@task_text,@task_state,@task_priority,@category_id)";
        SqlCommand cmd = new SqlCommand(sql);
        cmd.Parameters.AddWithValue("@task_text",txt );
        cmd.Parameters.AddWithValue("@task_state",state );
        cmd.Parameters.AddWithValue("@task_priority", pr);
        cmd.Parameters.AddWithValue("@category_id", category);
        DB.ExecuteCommand(cmd);
    }

    public static void Update(string task_text,int priority,int id)
    {
        string sql = "UPDATE tasks SET task_text=@task_text,task_priority=@task_priority  WHERE task_id=@task_id";
        SqlCommand cmd = new SqlCommand(sql);
        cmd.Parameters.AddWithValue("@task_text",task_text );
        cmd.Parameters.AddWithValue("@task_priority",priority);
        cmd.Parameters.AddWithValue("@task_id", id);
        DB.ExecuteCommand(cmd);
    }

    public static void Delete(int id)
    {
        string sql = "DELETE FROM tasks WHERE task_id=@task_id";
        SqlCommand cmd = new SqlCommand(sql);
        cmd.Parameters.AddWithValue("@task_id", id);
        DB.ExecuteCommand(cmd);
    }

    public static DataTable Select()
    {
        return DB.SelectData("SELECT * FROM tasks_view"); ;
    }

    public static DataRow Select(int id)
    {
        string sql = "SELECT * FROM tasks WHERE task_id=@task_id";
        SqlCommand cmd = new SqlCommand(sql);
        cmd.Parameters.AddWithValue("@task_id", id);
        DataTable dt = DB.SelectData(cmd);
        return dt.Rows[0];
        //use if to check
    }

    public static DataTable Search(string search)
    {
       
       string sql = "SELECT * FROM tasks WHERE task_text LIKE N'%" + search + "%'";
       return DB.SelectData(sql); ;

    }

   }