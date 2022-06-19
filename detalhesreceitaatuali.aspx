<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="detalhesreceitaatuali.aspx.cs" Inherits="detalhesreceitaatuali" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 228px;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" style="background-color: #FFFFFF">
        <tr>
            <td class="style6">
                <h2>
                    Detalhes da receita</h2>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Nome da receita</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Categoria</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="NomeCat" 
                    DataValueField="catId" ondatabound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    SelectCommand="SELECT [catId], [NomeCat] FROM [adicategoria]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Subcategoria</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="NomeSubCat" 
                    DataValueField="SubcatId" ondatabound="DropDownList2_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    SelectCommand="SELECT [SubcatId], [NomeSubCat] FROM [addsubcat] WHERE ([CatPrincId] = @CatPrincId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatPrincId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Foto da receita</td>
            <td style="font-weight: 700; color: #FFFFFF;">
                <asp:Image ID="Image2" runat="server" Width="125px" />
                <br />
                escolha uma nova imagem, se necessário<br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Ingredientes</td>
            <td>
                <cc1:Editor ID="Editor1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Modo de preparação</td>
            <td>
                <cc1:Editor ID="Editor2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Tempo de confeção</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Dificuldade</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="385px">
                <asp:ListItem>Difícil</asp:ListItem>
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Fácil</asp:ListItem>
            </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Custo</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                RepeatDirection="Horizontal" style="font-weight: 700" Width="385px">
                <asp:ListItem>Alto</asp:ListItem>
                <asp:ListItem>Medio</asp:ListItem>
                <asp:ListItem>Baixo</asp:ListItem>
            </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Atualizar" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="font-weight: 700" Text="Voltar" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #000000;"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

