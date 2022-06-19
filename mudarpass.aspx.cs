using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
//Mudar a password -- Atualizar na base de dados
public partial class mudarpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "update  registo set Password=@np where username=@un and password=@vp";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("np", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@un", Session["uname"].ToString());
        mycomm.Parameters.AddWithValue("@vp", TextBox1.Text);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Password alterada com sucesso";
        }
        else

        {
            Label2.Text = "Password atual incorreta";
        }
    }
}


