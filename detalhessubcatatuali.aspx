<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="detalhessubcatatuali.aspx.cs" Inherits="detalhessubcatatuali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            color: #FFFFFF;
            background-color: #000000;
        }
        .style5
        {
            width: 221px;
            color: #FFFFFF;
        }
        .style6
        {
            width: 320px;
            color: #000000;
            font-weight: 700;
            background-color: #FFFFFF;
        }
        .style7
        {
            color: #000000;
        }
        .style8
        {
            background-color: #FFFFFF;
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
            <td class="style6">
                <h2>
                    Detalhes da atualização de subcategoria</h2>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <h3>
                    Escolha a categoria</h3>
            </td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="NomeCat" 
                    DataValueField="catId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [adicategoria] WHERE [catId] = @original_catId " 
                    InsertCommand="INSERT INTO [adicategoria] ([NomeCat], [FotoCat]) VALUES (@NomeCat, @FotoCat)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [adicategoria]" 
                    UpdateCommand="UPDATE [adicategoria] SET [NomeCat] = @NomeCat, [FotoCat] = @FotoCat WHERE [catId] = @original_catId AND (([NomeCat] = @original_NomeCat) OR ([NomeCat] IS NULL AND @original_NomeCat IS NULL)) AND (([FotoCat] = @original_FotoCat) OR ([FotoCat] IS NULL AND @original_FotoCat IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_catId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeCat" Type="String" />
                        <asp:Parameter Name="original_FotoCat" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NomeCat" Type="String" />
                        <asp:Parameter Name="FotoCat" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeCat" Type="String" />
                        <asp:Parameter Name="FotoCat" Type="String" />
                        <asp:Parameter Name="original_catId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeCat" Type="String" />
                        <asp:Parameter Name="original_FotoCat" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <h3>
                    Nome da subcategoria</h3>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <h3>
                    Foto da subcategoria</h3>
            </td>
            <td style="font-weight: 700" class="style8">
                <span class="style7">
                <asp:Image ID="Image2" runat="server" Width="175px" />
                <br />
                escolha uma nova imagem, se necessário<br />
                </span>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Atualizar subcategoria" style="font-weight: 700" class="btn btn-danger" />
                <span class="style7">&nbsp;&nbsp;
                </span>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Voltar" 
                    style="font-weight: 700" class="btn btn-danger" />
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

