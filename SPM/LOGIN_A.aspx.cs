using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select count (*) from A_PASSWORD where Admin_Id ='" + T1.Text + "' and Password ='" + T2.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string output = cmd.ExecuteScalar().ToString();
        if(output=="1")
        {
            Session["Admin"] = T1.Text;
            Response.Redirect("~/splash_a.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Username / Password');</script>");
            T1.Text = "";
            T2.Text = "";

        }
    }
}