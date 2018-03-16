using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class RecoverPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    String GUIDvalue;
    DataTable dt = new DataTable();
   

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassword where Id='" + GUIDvalue + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                   var Uid =dt.Rows[0][1];
                }
                else
                {
                    lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                    lblMsg.ForeColor = Color.Red;
                }

            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                tbNewPass.Visible = true;
                tbConfirmPass.Visible = true;
                lblPassword.Visible = true;
                lblRetypePass.Visible = true;
                btRecPass.Visible = true;
            }
            else
            {
                lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                lblMsg.ForeColor = Color.Red;
            }
        }

    }

    protected void btRecPass_Click(object sender, EventArgs e)
    {
        if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                var Uid = dt.Rows[0][1];
                SqlCommand cmd = new SqlCommand("update ST_PASSWORD set Password='" + tbNewPass.Text + "' where REG_NO='" + Uid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPassword where REG_NO='" + Uid + "'", con);
                cmd2.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Changed Password . Please Visit Login Page!');</script>");
                ClientScript.RegisterStartupScript(typeof(Page), "closepage", "window.close();", true);
                
            }
        }
    }
}