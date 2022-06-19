<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="mudarpass.aspx.cs" Inherits="mudarpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 100%;
            background-color: #FFFFFF;
        }
    .style6
    {
            width: 254px;
            height: 23px;
            font-weight: 700;
            color: #000000;
        }
    .style8
    {
            width: 343px;
        }
    .style9
    {
            width: 343px;
            height: 23px;
        }
        .style10
        {
            width: 254px;
            font-weight: 700;
            color: #000000;
        }
        .style11
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black">
    <tr>
        <td class="style10">
            <h2 class="style11">
                Mudar password</h2>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Passoword atual</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" TextMode="Password"></asp:TextBox>
        </td>
        <td align="center" rowspan="5">
            <asp:Image ID="Image2" runat="server" 
                ImageUrl="" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            Nova password</td>
        <td class="style9">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Confirmar nova password</td>
        <td class="style9">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style9">
            <asp:Button ID="Button1" runat="server" Text="Mudar password" 
                onclick="Button1_Click" class="btn btn-danger" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style9">
            <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
        </td>
    </tr>
</table>
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

