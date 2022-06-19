using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class  detalhesreceitaatuali: System.Web.UI.Page
{
    string cid, scid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Page.IsPostBack) == false)
        {
            string pid = Request.QueryString["ProdutoId"];
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
            string q = "select * from adicionaProduto where ProdutoId=@pid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["NomeProduto"].ToString();
            Editor1.Content = myreader["Ingredientes"].ToString();
            Editor2.Content = myreader["ModoDePreparacao"].ToString();
            TextBox2.Text = myreader["tempo"].ToString();
            
            Image2.ImageUrl = "fotos/" + myreader["FotoProduto"].ToString();
            cid = myreader["CatPrincId"].ToString();
            scid = myreader["SubcatId"].ToString();

            DropDownList1.SelectedValue = myreader["CatPrincId"].ToString();
            myconn.Close();
        }
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.FindByValue(cid).Selected = true;
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.FindByValue(scid).Selected = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "update adicionaProduto set CatPrincId=@cpid,SubcatId=@scid,FotoProduto=@fotop,NomeProduto=@nomep,Ingredientes=@ing,ModoDePreparacao=@mp,tempo=@te,dificuldade=@dif,custo=@cust where ProdutoId=@pid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cpid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@nomep", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@ing", Editor1.Content);
        mycomm.Parameters.AddWithValue("@mp", Editor2.Content);
        mycomm.Parameters.AddWithValue("@te", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@dif", RadioButtonList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@cust", RadioButtonList2.SelectedItem.Text);

        if (FileUpload1.HasFile == true)
        {
            mycomm.Parameters.AddWithValue("@fotop", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("fotos/" + FileUpload1.FileName));

        }
        else
        {
            mycomm.Parameters.AddWithValue("@fotop", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        if (res == 1)
        {
            Label2.Text = "A receita foi atualizada com sucesso";
        }
        else
        {
            Label2.Text = "Ocorreu algum erro, tente novamente";
        }
        myconn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("atualizarreceita.aspx");
    }
}

