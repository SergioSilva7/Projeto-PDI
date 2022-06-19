using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


//Fazer registo - meter na base de dados na tabela registo, os dados que o utilizador colocar
public partial class registo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into registo values(@n,@mo,@ci,@tl,@un,@pass,@gen,@p,@tu)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mo", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ci", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@tl", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@un", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox6.Text);
        mycomm.Parameters.AddWithValue("@gen", RadioButtonList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@p", DropDownList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@tu", "normal");
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Response.Redirect("agraderegisto.aspx");
        }
        else
        {
            Label1.Text = "Ocorreram alguns erros";
        }
    }
}