using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class detalhessubcatatuali : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Page.IsPostBack) == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
            string q = "select * from addsubcat where Subcatid=@scatid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@scatid", Request.QueryString["scid"]);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            if (myreader.HasRows == true)
            {
                myreader.Read();
                TextBox1.Text = myreader["NomeSubCat"].ToString();
                Image2.ImageUrl = "fotos/" + myreader["FotoSubCat"].ToString();
                DropDownList1.SelectedValue = myreader["CatPrincId"].ToString();
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
        string q = "update addsubcat set CatPrincId=@cpid,NomeSubCat=@nomesc,FotoSubCat=@fotosc where Subcatid=@scid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cpid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@nomesc", TextBox1.Text);
        if (FileUpload1.HasFile == true)
        {
            mycomm.Parameters.AddWithValue("@fotosc", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("fotos/" + FileUpload1.FileName));
            Image2.ImageUrl = "fotos/" + FileUpload1.FileName;
        }
        else
        {
            mycomm.Parameters.AddWithValue("@fotosc", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@scid", Request.QueryString["scid"]);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        if (res == 1)
        {
            Label2.Text = "Subcategoria adicionada com sucesso";
        }
        else
        {
            Label2.Text = "Ocorreu algum erro, tente novamente";
        }
        myconn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("atualizarsubcat.aspx");
    }
}