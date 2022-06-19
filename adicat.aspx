<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adicat.aspx.cs" Inherits="adicat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black">
        <tr>
            <td class="style16" colspan="2">
                <h1>
                    <strong class="style13">Adicionar categoria</strong></h1>
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style9">
                Nome da categoria</td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Foto da categoria</td>
            <td class="style17">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Adicionar categoria"  CssClass="btn btn-danger" />
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style18">
                <asp:Label ID="Label2" runat="server" CssClass="style13"></asp:Label>
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
       <br />
        <br />
         <br />
          <br />
       <br />
        <br />
         <br />
          <br />
     
</asp:Content>

