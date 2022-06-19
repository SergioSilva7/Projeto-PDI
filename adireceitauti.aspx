<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="adireceitauti.aspx.cs" Inherits="adireceitauti" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 971px;
        height: 549px;
            background-color: #FFFFFF;
        }
        .style5
        {
            width: 464px;
            font-weight: 700;
            color: #E63155;
        }
    .style6
    {
            width: 622px;
            
            margin-left: 80px;
        }
        .style7
        {
            width: 464px;
            font-weight: 700;
            color: #000000;
            background-color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black">
        <tr>
            <td class="style7" style="font-weight: 700">
                <h2>
                    Adiciona receita</h2>
            </td>
            <td class="style6">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Escolha a categoria</td>
            <td style="margin-left: 80px" class="style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="NomeCat" 
                    DataValueField="catId" style="font-weight: 700">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    SelectCommand="SELECT [catId], [NomeCat] FROM [adicategoria]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Escolha subcategoria</td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="NomeSubCat" 
                    DataValueField="SubcatId" style="font-weight: 700">
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
            <td class="style7">
                Nome da receita</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Ingredientes</td>
            <td class="style6">
                <cc1:Editor ID="Editor1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Modo de preparação</td>
            <td class="style6">
                <cc1:Editor ID="Editor2" runat="server" />
            </td>
        </tr>
        
        <tr>
            <td class="style7">
                Foto da receita</td>
            <td class="style6">
                <asp:FileUpload ID="FileUpload1" runat="server" style="font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Adiciona receita" style="font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

