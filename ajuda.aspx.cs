using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ajuda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into contactos values(@n,@emid,@tl,@msg,@dtmsg)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@emid", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@tl", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@msg", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@dtmsg", DateTime.Now);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label1.Text = "Obrigado por nos contactar. Iremos responder o mais rapidamente possível!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            Label1.Text = "Ocorreram alguns erros";

        }
    }
}