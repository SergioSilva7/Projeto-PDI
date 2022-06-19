<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 100%;
            color: #000000;
            background-color: #FFFFFF;
        }
    .style5
    {
        width: 340px;
    }
    .style6
    {
            color: #000000;
            background-color: #FFFFFF;
        }
    .style7
    {
            width: 378px;
            font-weight: 700;
        }
    .style8
    {
        width: 176px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style7">
            <h1>
                Feedback</h1>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style6" colspan="2" rowspan="11" align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="fotos/feedback.jpg" />
        </td>
    </tr>
    <tr>
        <td class="style7">
            <h3>
            </h3>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Nome</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Email</td>
        <td class="style8">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Telemóvel</td>
        <td class="style8">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Como classifica o nosso website?
        </td>
        <td class="style8">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="385px">
                <asp:ListItem>Excelente</asp:ListItem>
                <asp:ListItem>Muito Bom</asp:ListItem>
                <asp:ListItem>Bom</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Mau</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Como classifica o design do website?</td>
        <td class="style8">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="385px">
                <asp:ListItem>Excelente</asp:ListItem>
                <asp:ListItem>Muito Bom</asp:ListItem>
                <asp:ListItem>Bom</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Mau</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="RadioButtonList2" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            O que acha da qualidade das receitas no nosso website?</td>
        <td class="style8">
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="154px">
                <asp:ListItem>Excelente</asp:ListItem>
                <asp:ListItem>Muito Bom</asp:ListItem>
                <asp:ListItem>Bom</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Mau</asp:ListItem>

            </asp:RadioButtonList>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="RadioButtonList3" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Está satisfeito com o nosso website?</td>
        <td class="style8">
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="154px">
                <asp:ListItem>Sim</asp:ListItem>
                <asp:ListItem>Não</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="RadioButtonList4" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Outras sugestões:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox4" runat="server" Height="61px" TextMode="MultiLine" 
                Width="194px"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Esta informação é necessária" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <h3>
            </h3>
        </td>
        <td class="style8">
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                class="btn btn-danger" Text="Enviar feedback" />
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            <h3>
            </h3>
        </td>
        <td class="style8">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

