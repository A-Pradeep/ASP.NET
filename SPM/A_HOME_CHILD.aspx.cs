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
        if (Session["Admin"] != null)
        {
            Label1.Text = " " + Session["Admin"].ToString() + " ";

        }
        else
        {
            Response.Redirect("~/HOME.aspx");
        }

       

    }


    protected void Button1_click(object sender,EventArgs e)
    {
        SqlDataSource1.InsertParameters["ID"].DefaultValue =((TextBox)GridView1.FooterRow.FindControl("TextBox5")).Text;
        SqlDataSource1.InsertParameters["NAME"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox3")).Text;
        SqlDataSource1.InsertParameters["PASSWORD"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox4")).Text;
        SqlDataSource1.Insert();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["REG_NO"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBox6")).Text;
        SqlDataSource2.InsertParameters["PASSWORD"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBox8")).Text;
        SqlDataSource2.InsertParameters["UserName"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBox7")).Text;
        SqlDataSource2.InsertParameters["Email"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBox9")).Text;
        SqlDataSource2.Insert();
    }
}