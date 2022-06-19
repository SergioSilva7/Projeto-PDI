using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

//login - aceder à base de dados para ir buscar no username e password
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "select * from registo where username=@un and password=@pass";
        com = new SqlCommand(q, con);
        com.Parameters.AddWithValue("@un", TextBox1.Text);
        com.Parameters.AddWithValue("@pass", TextBox2.Text);
        con.Open();
        SqlDataReader myreader;
        myreader = com.ExecuteReader();
        if (myreader.HasRows == true)
        {
            myreader.Read();
            Session.Add("n", myreader["nome"].ToString());
            Session.Add("uname", myreader["username"].ToString());
            if (myreader["TipoDeUtilizador"].ToString().ToLower() == "admin")
            {
                con.Close();
                Session.Add("ad", "admin");
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                con.Close();

                if (Request.QueryString["returnurl"] != null)
                {
                    Response.Redirect(Request.QueryString["returnurl"]);
                }
                else
                {
                    Response.Redirect("pagprincipal.aspx");
                }
            }
        }
        else
        {
            Label1.Text = "username/password incorretos";
        }
    }


    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {

    }
}
