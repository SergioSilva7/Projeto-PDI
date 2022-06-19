using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class detalhescatatuali : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
            String q = "select * from adicategoria where catid=@catid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            if (myreader.HasRows == true)
            {
                myreader.Read();
                TextBox1.Text = myreader["NomeCat"].ToString();
                Image2.ImageUrl = "fotos/" + myreader["FotoCat"].ToString();
                myconn.Close();
            }
            myconn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        String q = "update adicategoria set NomeCat=@ncat,FotoCat=@fcat where catid=@cid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@ncat", TextBox1.Text);
        if (FileUpload1.HasFile == true)
        {
            mycomm.Parameters.AddWithValue("@fcat", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("fotos/" + FileUpload1.FileName));
            Image2.ImageUrl = "fotos/" + FileUpload1.FileName;
        }
        else
        {
            mycomm.Parameters.AddWithValue("@fcat", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@cid", Request.QueryString["cid"]);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        if (res == 1)
        {
            Label2.Text = "A categoria foi atualizada com sucesso";
        }
        else
        {
            Label2.Text = "Ocorreu algum erro, tente novamente";
        }
        myconn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("atualizarcat.aspx");
    }
}

