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
        if (Session["Student"] != null)
        {
            Label1.Text = "ATTENDANCE OF   " + Session["Student"].ToString() + " ";
            Label1.Text.ToUpper();
        }
        else
        {
            Response.Redirect("~/HOME.aspx");
        }


    }
}