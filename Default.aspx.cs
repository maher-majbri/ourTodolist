using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  lblName.Text = Convert.ToString( Session["m_name"]);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtTask.Text != "")
        {
            TasksManager.Insert(txtTask.Text, "New Task",Convert.ToInt16( txtPriority.Text), Convert.ToInt16( ddlCategory.SelectedValue));
            grdTasks.DataBind();
        }
        else {
            lblMessage.Text = "Please fill the task text";
        }

    
    }
}