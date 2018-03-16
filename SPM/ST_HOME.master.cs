using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ST_HOME : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Student"] != null)
        {
            Label1.Text = " " + Session["Student"].ToString() + " ";

        }
        else
        {
            Response.Redirect("~/HOME.aspx");
        }

       
    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ST_HOME_IM.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ST_HOME_AT.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ST_HOME_NOT.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PRATHAP-PRADEEP;Initial Catalog=SPR;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select PASSWORD from ST_PASSWORD where Password='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update ST_PASSWORD set Password='" + TextBox2.Text + "' where Password ='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfull');</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Old Password');</script>");
        }

    }
}
