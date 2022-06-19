<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="registo.aspx.cs" Inherits="registo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        height: 25px;
            width: 453px;
            background-color: #FFFFFF;
        }
        .style17
    {
            width: 201px;
            background-color: #FFFFFF;
        }
        .style18
        {
            width: 201px;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style20
        {
            color: #000000;
            background-color: #FFFFFF;
        }
        .style21
        {
            width: 201px;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style22
        {
            width: 453px;
            background-color: #FFFFFF;
        }
        .style23
        {
            width: 235px;
            background-color: #FFFFFF;
        }
        .style24
        {
            width: 269px;
            background-color: #FFFFFF;
            font-weight: 700;
            color: #99CC00;
        }
        .style25
        {
            width: 201px;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
        .style7
        {
            background-color: #FFFFFF;
        }
        .style26
        {
            width: 201px;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
            height: 40px;
        }
        .style27
        {
            width: 269px;
            background-color: #FFFFFF;
            font-weight: 700;
            color: #99CC00;
            height: 40px;
        }
        .style28
        {
            width: 235px;
            background-color: #FFFFFF;
            height: 40px;
        }
        .style29
        {
            width: 453px;
            background-color: #FFFFFF;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7" bgcolor="Black">
    <tr>
        <td class="style25">
            <h2 style="color: #000000; background-color: #FFFFFF;">
                Regista-te</h2>
        </td>
        <td class="style24">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
        </td>
        <td class="style24">
        </td>
        <td class="style23">
        </td>
        <td class="style10">
        </td>
    </tr>
    <tr>
        <td class="style18">
            Nome</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Colocar Nome" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td align="center" rowspan="6" class="style22">
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image 
                ID="Image2" runat="server" Height="258px" ImageUrl="~/fotos/CookFun500.png" 
                Width="600px" BackColor="WhiteSmoke" />
        </td>
    </tr>
    <tr>
        <td class="style18">
            Morada</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Colocar morada" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style18">
            Cidade</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Colocar Cidade" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style18">
            Telemóvel</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Colocar número de telemóvel" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style18">
            Username</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Colocar username" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style18">
            Password</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" 
                BackColor="White" CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Colocar password" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            Confirmar Password</td>
        <td align="center" class="style24">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" 
                CssClass="style20"></asp:TextBox>
        </td>
        <td align="center" class="style23">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                ErrorMessage="Por favor verifique a sua password" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            Género</td>
        <td class="style24" align="center">
            &nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                style="color: #000000" RepeatColumns="2">
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Feminino</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="Colocar género" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style26">
            País</td>
        <td align="center" class="style27">
            <asp:DropDownList ID="DropDownList1" runat="server" style="font-weight: 700" 
                ForeColor="Black">
                <asp:ListItem>Albânia</asp:ListItem>
                <asp:ListItem>Alemanha</asp:ListItem>
                <asp:ListItem>Áustria</asp:ListItem>
                <asp:ListItem>Belgica</asp:ListItem>
                <asp:ListItem>Bielorrússia</asp:ListItem>
                <asp:ListItem>Bósnia e Herzegovina</asp:ListItem>
                <asp:ListItem>Bulgária</asp:ListItem>
                <asp:ListItem>Cazaquistão</asp:ListItem>
                <asp:ListItem>Chipre</asp:ListItem>
                <asp:ListItem>Croácia</asp:ListItem>
                <asp:ListItem>Dinamarca</asp:ListItem>
                <asp:ListItem>Eslováquia</asp:ListItem>
                <asp:ListItem>Finlândia</asp:ListItem>
                <asp:ListItem>França</asp:ListItem>
                <asp:ListItem>Grécia</asp:ListItem>
                <asp:ListItem>Hungria</asp:ListItem>
                <asp:ListItem>Irlanda</asp:ListItem>
                <asp:ListItem>Islândia</asp:ListItem>
                <asp:ListItem>Itália</asp:ListItem>
                <asp:ListItem>Luxemburgo</asp:ListItem>
                <asp:ListItem>Moldávia</asp:ListItem>
                <asp:ListItem>Noruega</asp:ListItem>
                <asp:ListItem>Países Baixos</asp:ListItem>
                <asp:ListItem>Polónia</asp:ListItem>
                <asp:ListItem>Portugal</asp:ListItem>
                <asp:ListItem>Reino Unido</asp:ListItem>
                <asp:ListItem>Roménia</asp:ListItem>
                <asp:ListItem>Suécia</asp:ListItem>
                <asp:ListItem>Turquia</asp:ListItem>
                <asp:ListItem>Ucrânia</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style28">
            </td>
        <td class="style29">
            </td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td align="center" class="style24">
            <asp:Button ID="Button3" runat="server" Text="Regista-te" 
                onclick="Button3_Click" style="font-weight: 700" class="btn btn-danger" />
        </td>
        <td class="style23">
            &nbsp;</td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td align="center" class="style24">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style23">
            &nbsp;</td>
        <td class="style22">
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

