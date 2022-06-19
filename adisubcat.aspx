<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adisubcat.aspx.cs" Inherits="adisubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black">
        <tr>
            <td class="style8" colspan="2">
                <h1>
                    Adicionar subcategoria</h1>
            </td>
           
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Escolha o nome da categoria</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="NomeCat" 
                    DataValueField="catId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    SelectCommand="SELECT [catId], [NomeCat] FROM [adicategoria]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Nome da subcategoria</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Foto da subcategoria</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Adicionar subcategoria" style="font-weight: 700" class="btn btn-danger" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
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
</asp:Content>

