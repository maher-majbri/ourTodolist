using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        { 
            int id = Convert.ToInt16(Request.QueryString["id"]);
            DataRow dr =  TasksManager.Select(id);
            //check the datarow if its null
            txtTask.Text = dr["task_text"].ToString();
            txtPriority.Text = dr["task_priority"].ToString();
            txtId.Text = dr["task_id"].ToString();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        TasksManager.Update(txtTask.Text, Convert.ToInt16(txtPriority.Text), Convert.ToInt16(txtId.Text));
        Response.Redirect("Default.aspx");
    }
}