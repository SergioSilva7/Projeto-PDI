using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mostrarreceitas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }   
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "Não existem receitas";
        }
        else
        {
            Label2.Text = "";
        }
    }

    
}



