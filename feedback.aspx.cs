using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["bd"].ConnectionString);
        string q = "insert into Feedback values(@n,@emid,@tl,@wt,@wd,@mr,@is,@sug,@dtmsg)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@emid", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@tl", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@wt", RadioButtonList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@wd", RadioButtonList2.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@mr", RadioButtonList3.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@is", RadioButtonList4.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@sug", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@dtmsg", DateTime.Now);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label1.Text = "Obrigado por submeter o feedback";
        }
        else
        {
            Label1.Text = "Ocorreram alguns erros";
        }
    }
}