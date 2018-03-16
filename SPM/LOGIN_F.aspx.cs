using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select count (*) from FA_PASSWORD where ID ='" + T1.Text + "' and PASSWORD ='" + T2.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string output = cmd.ExecuteScalar().ToString();
        if (output == "1")
        {
            Session["Faculty"] = T1.Text;
            Response.Redirect("~/FA_HOME_INDEX.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Username / Password');</script>");
            T1.Text = "";
            T2.Text = "";
            T1.Focus();
        }
    }

}