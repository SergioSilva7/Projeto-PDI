using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class adisubcat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into addsubcat values(@mcid,@scname,@scpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scname", TextBox1.Text);

        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@scpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("fotos/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@scpic", "default.png");
        }

        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "A subcategoria foi adicionada com sucesso";
        }
        else
        {
            Label2.Text = "Ocorreram alguns erros, tente novamente";
        }
    }
}