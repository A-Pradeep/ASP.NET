using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class A_HOME : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=PRATHAP-PRADEEP;Initial Catalog=SPR;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select Password from A_PASSWORD where Password='" + TextBox1.Text + "'",con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if(dt.Rows.Count.ToString() =="1")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update A_PASSWORD set Password='" + TextBox2.Text + "' where Password ='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Sucessfull');</script>");
         }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid old  Password');</script>");
        }

    }
}
