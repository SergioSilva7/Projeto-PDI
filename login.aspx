<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 100%;
            background-color: #FFFFFF;
        }
    .style8
    {
        width: 195px;
            font-weight: 700;
        color: #000000;
    }
    .style9
    {
            width: 249px;
        }
    .style10
    {
            width: 226px;
        }
    .style11
    {
        width: 195px;
        height: 23px;
            font-weight: 700;
        color: #000000;
    }
    .style12
    {
        width: 249px;
        height: 23px;
    }
    .style13
    {
        width: 226px;
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <table class="style7" bgcolor="Black">
    <tr>
        <td class="style8">
            <h1>
                Login</h1>
        </td>
        <td class="style9">
            &nbsp;</td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td align="center" rowspan="3">
            &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="" 
                BackColor="Black" />
        </td>
    </tr>
    <tr>
        <td class="style11" align="left" valign="middle">
            Username</td>
        <td align="center" class="style12">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White"></asp:TextBox>
        </td>
        <td align="center" class="style13">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Colocar username" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Password</td>
        <td align="center" class="style9">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                BackColor="White"></asp:TextBox>
        </td>
        <td align="center" class="style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Colocar password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td align="center" class="style9">
            &nbsp;</td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td align="center" class="style9">
            <asp:Button ID="Button3" runat="server" Text="Login" onclick="Button3_Click" 
               cssclass="btn btn-danger" />
        </td>
        <td align="center" class="style10">
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="148px" OnSendingMail="PasswordRecovery1_SendingMail">
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            </asp:PasswordRecovery>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td align="center" class="style9">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #000000;"></asp:Label>
        </td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
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
      <br />
      <br />
</asp:Content>

