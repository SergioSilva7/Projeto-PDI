<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="procurardados.aspx.cs" Inherits="procurardados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ProdutoId" DataSourceID="SqlDataSource1" Height="160px" 
                    Width="965px">
                    <Columns>
                        <asp:BoundField DataField="NomeProduto" HeaderText="NomeReceita" 
                            SortExpression="NomeProduto" />
                        <asp:ImageField DataImageUrlField="FotoProduto" 
                            DataImageUrlFormatString="fotos/{0}" HeaderText="ImgReceitas">
                            <ControlStyle Height="75px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="ProdutoId" 
                            DataNavigateUrlFormatString="detalhesprod.aspx?pid={0}" HeaderText="Detalhes" 
                            Text="Mais detalhes" >
                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [adicionaProduto] WHERE [ProdutoId] = @original_ProdutoId AND (([NomeProduto] = @original_NomeProduto) OR ([NomeProduto] IS NULL AND @original_NomeProduto IS NULL)) AND (([FotoProduto] = @original_FotoProduto) OR ([FotoProduto] IS NULL AND @original_FotoProduto IS NULL))" 
                    InsertCommand="INSERT INTO [adicionaProduto] ([NomeProduto], [FotoProduto]) VALUES (@NomeProduto, @FotoProduto)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [ProdutoId], [NomeProduto], [FotoProduto] FROM [adicionaProduto] WHERE ([NomeProduto] LIKE '%' + @NomeProduto + '%')" 
                    
                    UpdateCommand="UPDATE [adicionaProduto] SET [NomeProduto] = @NomeProduto, [FotoProduto] = @FotoProduto WHERE [ProdutoId] = @original_ProdutoId AND (([NomeProduto] = @original_NomeProduto) OR ([NomeProduto] IS NULL AND @original_NomeProduto IS NULL)) AND (([FotoProduto] = @original_FotoProduto) OR ([FotoProduto] IS NULL AND @original_FotoProduto IS NULL))" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProdutoId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeProduto" Type="String" />
                        <asp:Parameter Name="original_FotoProduto" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NomeProduto" Type="String" />
                        <asp:Parameter Name="FotoProduto" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="NomeProduto" QueryStringField="pname" 
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeProduto" Type="String" />
                        <asp:Parameter Name="FotoProduto" Type="String" />
                        <asp:Parameter Name="original_ProdutoId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeProduto" Type="String" />
                        <asp:Parameter Name="original_FotoProduto" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

