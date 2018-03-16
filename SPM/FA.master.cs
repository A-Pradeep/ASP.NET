using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FA : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Faculty"] != null)
        {
            if (Session["Faculty"] != null)
            {

                Label1.Text = " " + Session["Faculty"].ToString() + " ";

            }


        }
        else
        {
            Response.Redirect("~/HOME.aspx");
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PRATHAP-PRADEEP;Initial Catalog=SPR;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select PASSWORD from FA_PASSWORD where PASSWORD='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update FA_PASSWORD set PASSWORD='" + TextBox2.Text + "' where PASSWORD ='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfull.');</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Old Password');</script>");
        }

    }
}
