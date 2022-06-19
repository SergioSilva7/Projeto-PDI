<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="detalhescatatuali.aspx.cs" Inherits="detalhescatatuali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 270px;
        font-weight: bold;
            color: #FFFFFF;
        }
        .style6
        {
            width: 270px;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style7
        {
            color: #000000;
        }
       
        .style9
        {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
    <tr>
        <td class="style6" colspan="2">
            <h2>
                Detalhes da atualização da categoria</h2>
        </td>
       
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            Nome da categoria</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Foto da categoria</td>
        <td class="style8">
            <span class="style7">
            <asp:Image ID="Image2" runat="server" Height="75px" />
            <br />
            Escolha uma nova imagem, se necessário<br />
            </span>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style8">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="atualizar" 
                class="btn btn-danger" />
            <span class="style7">&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Voltar" 
                class="btn btn-danger" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style8">
            <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                CssClass="style7"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

