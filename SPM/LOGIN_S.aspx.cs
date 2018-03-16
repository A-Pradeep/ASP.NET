using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.Net;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select count (*) from ST_PASSWORD where REG_NO ='" + T1.Text + "' and PASSWORD ='" + T2.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        string output = cmd.ExecuteScalar().ToString();
        if (output == "1")
        {
            Session["Student"] = T1.Text;
            Response.Redirect("~/splash_s.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Username / Password');</script>");
            T1.Text = "";
            T2.Text = "";
            T1.Focus();
        }
    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        using(SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from ST_PASSWORD where UserName='" + txtUserName.Text + "'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count !=0)
            {
                string myGUID = Guid.NewGuid().ToString();
                var REG_NO =dt.Rows[0][0];
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassword values('" + myGUID + "','" + REG_NO + "',getdate())", con);
                cmd1.ExecuteNonQuery();


                //send E-mail

                string ToEmailAddress = dt.Rows[0][3].ToString();
                string Username = dt.Rows[0][1].ToString();
                string Emailbody = "Namaste  " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/>http://localhost:50109/Forgot_Password.aspx?uid="+myGUID+"<br/><br/><br/> <b> SPM (By EWCM) <b>";
                
                MailMessage Passemail = new MailMessage("EMAIL@gmail.com", ToEmailAddress);
                Passemail.Body = Emailbody;
                Passemail.IsBodyHtml = true;
                Passemail.Subject = "Reset Password";

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

                smtpClient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "EMAIL@gmail.com",
                    Password = "EMAIL PASSWORD"
                };

                smtpClient.EnableSsl = true;
                smtpClient.Send(Passemail);


                lblMessage.Text = "An email with instructions to reset your password is sent to your registered email";
                txtUserName.Text = "";
            }
            else
            {
                lblMessage.Text = " Oops ! Invalid / Incorrect Name";
                
            }
        }
    }

  
}
