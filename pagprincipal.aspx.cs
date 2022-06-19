using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
public partial class pagprincipal : System.Web.UI.Page
{
    StringBuilder htmlTable2 = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "select * from adicategoria";
        mycomm = new SqlCommand(q, myconn);
        myconn.Open();
        SqlDataReader articleReader = mycomm.ExecuteReader();
        if (articleReader.HasRows)
        {
            while (articleReader.Read())
            {
                htmlTable2.Append("<li>");
                htmlTable2.Append("<div class='banner-info1-grid'><a href='mostrarcat.aspx?cid=" + articleReader["catid"].ToString() + "'><img src='fotos/" + articleReader["FotoCat"].ToString() + "' alt=''  width='250' height='225' /></a><a href='mostrarcat.aspx?cid=" + articleReader["catid"].ToString() + "'><h3>" + articleReader["NomeCat"].ToString() + "</h3></a></div>");
                htmlTable2.Append("</li>");
            }
            PlaceHolder1.Controls.Add(new Literal { Text = htmlTable2.ToString() });
            myconn.Close();
            articleReader.Close();
            articleReader.Dispose();
        }
        else
        {
            Response.Write("Sem categorias");
        }
    }
}