using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class detalhesprod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["uname"] != null)
            {
                Label7.Text = "";
                Panel2.Visible = true;
            }
            else
            {
                Label7.Text = "Por favor faça <a href='login.aspx?returnurl=detalhesprod.aspx?pid=" + Request.QueryString["pid"] + "'>login</a> para comentar";
                Panel2.Visible = false;
            }
        }
        string pid = Request["pid"];
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "select NomeCat,NomeSubCat,NomeProduto,Ingredientes,ModoDePreparacao,FotoProduto,tempo,dificuldade,custo from adicategoria,addsubcat,adicionaProduto where adicionaProduto.CatPrincId=adicategoria.catId and adicionaProduto.SubcatId=addsubcat.SubcatId and ProdutoId=@pid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pid", pid);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["NomeCat"].ToString();
        Label3.Text = myreader["NomeSubCat"].ToString();
        Label4.Text = myreader["NomeProduto"].ToString();
        Label5.Text = myreader["Ingredientes"].ToString();
        Label6.Text = myreader["ModoDePreparacao"].ToString();
        Label10.Text = myreader["tempo"].ToString();
        Label11.Text = myreader["dificuldade"].ToString();
        Label12.Text = myreader["custo"].ToString();
        ImageButton1.ImageUrl = "fotos/" + myreader["FotoProduto"].ToString();
        myconn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("pagprincipal.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            string pid = Request["pid"];
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
            string q = "insert into comentario values(@comm,@commby,@commdt,@rid)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@comm", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@commby", Session["n"].ToString());
            mycomm.Parameters.AddWithValue("@commdt", DateTime.Now);
            mycomm.Parameters.AddWithValue("@rid", Request.QueryString["pid"]);
            myconn.Open();
            int res = mycomm.ExecuteNonQuery();
            if (res == 1)
            {
                Response.Write("<script>alert('Comentário postado com sucesso')</script>");
                DataList1.DataBind();
            }
            myconn.Close();
        }
        else
        {

        }
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        Label8.Text = e.AffectedRows + " comentário(s) sobre " + Label4.Text;
    }
}
