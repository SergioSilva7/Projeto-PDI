<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .banneradmin {
            background: url(../images/banner.jpg) no-repeat 0px 0px;
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            -ms-background-size: cover;
            min-height: 600px;
        }
        .style6 {
            height: 23px;
            background-color: #FFFFFF;
            
        }
        .style8
        {
            color: #000000;
            background-color: #FFFFFF;
        }
        .style9
        {
            color: #000000;
        }
        .auto-style1 {
            color: #000000;
            background-color: #FFFFFF;
            width: 1185px;
        }
        .auto-style5 {
            color: #000000;
            height: 794px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="style4" bgcolor="Black" style="background-color: #FFFFFF">
    <tr>
        <td class="auto-style1">
            <h2 class="style9">
                Bem-vindo Admin, aqui poderá gerir o seu website!</h2>
        </td>
    </tr>
    <tr>
        <td style="font-weight: inherit" class="banneradmin">
            <h2 class="auto-style5">
            </h2>
        </td>
    </tr>
    
</table>
 <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
</asp:Content>

