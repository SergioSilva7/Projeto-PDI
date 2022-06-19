using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into adicionaProduto values(@mcid,@scid,@rname,@ing,@htm,@temp,@dif,@cust,@rpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@rname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@ing", Editor1.Content);
        mycomm.Parameters.AddWithValue("@htm", Editor2.Content);
        mycomm.Parameters.AddWithValue("@temp", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@dif", RadioButtonList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@cust", RadioButtonList2.SelectedItem.Text);

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

        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Receita adicionada com sucesso";
        }
        else
        {
            Label2.Text = "Ocorreram alguns erros, tente novamente";
        }
    }
}

