using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octat-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
            Response.End();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));

        foreach (string strfile in  Directory.GetFiles(Server.MapPath("~/Data")))
        {
            FileInfo fi = new FileInfo(strfile);
            dt.Rows.Add(fi.Name, fi.Length, getfileextension(fi.Extension));

        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    private string getfileextension(string ext)
    {
        switch (ext.ToLower())
        {
            case ".doc":
            case ".docx":
                return "Microsoft Word Document(doc)";

            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document(xls)";

            case ".jpg":
            case ".png":
                return "Image";

            case ".pdf":
                return "Protected Document Format(pdf)";

            default:
                return "Unknown";
        }
    }
}