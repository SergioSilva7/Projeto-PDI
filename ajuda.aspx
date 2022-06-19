<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="ajuda.aspx.cs" Inherits="ajuda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4 {
            width: 100%;
            background-color: #FFFFFF;
            
        }
    .style5
    {
        width: 275px;
        font-weight: 700;
        color: #FF2020;
    }
    .style6
    {
        width: 179px;
    }
    .style8
    {
        width: 203px;
        margin-left: 80px;
    }
    .style9
    {
            width: 357px;
            font-weight: 700;
            color: #000000;
            height: 23px;
        }
    .style10
    {
            width: 179px;
            height: 23px;
            color: #000000;
            font-weight: bold;
        }
    .style11
    {
        width: 203px;
        margin-left: 80px;
        height: 23px;
    }
    .style12
    {
        height: 23px;
    }
    .style13
    {
        width: 179px;
        color: #FFFFFF;
        font-weight: bold;
    }
    .style14
    {
        color: #000000;
    }
    .style15
    {
            width: 357px;
            font-weight: 700;
            color: #FFFFFF;
        }
        .style16
        {
            width: 357px;
            font-weight: 700;
            color: #000000;
        }
        .style17
        {
            width: 179px;
            color: #000000;
            font-weight: bold;
        }
        .style18
        {
            width: 179px;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black">
    <tr>
        <td class="style16">
            <h1>
            Contacta-nos</h1>
        </td>
        <td class="style6">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Nome</td>
        <td  class="style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td align="center" class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Colocar nome" ForeColor="Red" 
                style="font-weight: 700"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Email</td>
        <td  class="style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td align="center" class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Email é necessário" ForeColor="Red" 
                style="font-weight: 700"></asp:RequiredFieldValidator>
        </td>
        <td align="center" rowspan="5" style="background-color: #ffffff">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/fotos/contactus.png" />
        </td>
    </tr>
    <tr>
        <td class="style16">
            Telemóvel</td>
        <td  class="style6">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td align="center" class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Número de telemóvel é necessário" 
                ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style16">
            Mensagem</td>
        <td  class="style6">
            <asp:TextBox ID="TextBox4" runat="server" Height="73px" TextMode="MultiLine" 
                Width="190px"></asp:TextBox>
        </td>
        <td align="center" class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td align="center" class="style6">
            &nbsp;</td>
        <td align="center" class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td  class="style6">
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                style="font-weight: 700" class="btn btn-danger" Text="Submete" />
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td align="left" class="style6">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td align="left" class="style6">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Pode contactar-nos através das seguintes formas:</td>
        <td align="left" class="style18">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td align="left" class="style18">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            Email</td>
        <td align="left" class="style10">
            <span class="style14">sergito-silva@hotmail.com</span></td>
        <td class="style11">
            </td>
        <td class="style12">
            </td>
    </tr>
    
    <tr>
        <td class="style16">
            Morada</td>
        <td align="left" class="style17">
            Coimbra, Portugal</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            &nbsp;</td>
        <td align="left" class="style13">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

