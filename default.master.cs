using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class _default : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Label1.Text = " chef";
            LinkButton7.Visible = true;
            LinkButton8.Visible = true;
        }
        else
        {
            Label1.Text = Session["n"].ToString();
            LinkButton9.Visible = true;
            LinkButton10.Visible = true;
            LinkButton11.Visible = true;
        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("pagprincipal.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("registo.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("pagprincipal.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        LinkButton10.Visible = true;
        Response.Redirect("mudarpass.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        LinkButton12.Visible = true;
        Response.Redirect("minhasreceitas.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("mostrarcat.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ajuda.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("SobreNos.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("adireceitauti.aspx");
    }
}