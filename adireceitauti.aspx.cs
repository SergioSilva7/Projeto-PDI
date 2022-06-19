using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class adireceitauti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("erro.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into adiProdutoUtilizador values(@mcid,@scid,@rname,@ing,@htm,@rpic,@addby,@st)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@rname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@ing", Editor1.Content);
        mycomm.Parameters.AddWithValue("@htm", Editor2.Content);
        
        if (FileUpload1.HasFile)
        {
            string fn;
            Random rnd = new Random();
            int rndnum = rnd.Next(6000000);
            fn = rnd + FileUpload1.FileName;
            mycomm.Parameters.AddWithValue("@rpic", fn);
            FileUpload1.SaveAs(MapPath("fotos/" + fn));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@rpic", "default.png");
        }
        mycomm.Parameters.AddWithValue("@st", "A aguardar");


        mycomm.Parameters.AddWithValue("@addby", Session["uname"].ToString());

        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "A receita foi adicionada com sucesso! Irá aparecer nas receitas de utilizador";
        }
        else
        {
            Label2.Text = "Ocorreram alguns erros, tente de novo!";
        }
    }
}