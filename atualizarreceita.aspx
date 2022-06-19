<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="atualizarreceita.aspx.cs" Inherits="atualizarreceita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" style="background-color: #FFFFFF">
        <tr>
            <td class="style6" colspan="2">
                <h1 style="color: #000000">
                    Atualizar receitas</h1>
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
                Escolha a categoria</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
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
            <td class="style8">
                Escolha a subcategoria</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="NomeSubCat" 
                    DataValueField="SubcatId">
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
            <td class="style8" valign="TOP">
                Receitas</td>
            <td align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ProdutoId" DataSourceID="SqlDataSource3" 
                    style="color: #000000; font-weight: 700" Width="745px">
                    <Columns>
                        <asp:BoundField DataField="NomeProduto" HeaderText="Nome das receitas" 
                            SortExpression="NomeProduto" />
                        <asp:ImageField DataImageUrlField="FotoProduto" 
                            DataImageUrlFormatString="fotos/{0}" 
                            HeaderText="Foto das receitas">
                            <ControlStyle Width="125px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="ProdutoId" 
                            DataNavigateUrlFormatString="detalhesreceitaatuali.aspx?pid={0}" 
                            HeaderText="Atualizar" Text="Atualizar" >
                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                        </asp:HyperLinkField>
                        <asp:CommandField HeaderText="Apagar" ShowDeleteButton="True" >
                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [adicionaProduto] WHERE [ProdutoId] = @original_ProdutoId AND (([NomeProduto] = @original_NomeProduto) OR ([NomeProduto] IS NULL AND @original_NomeProduto IS NULL)) AND (([FotoProduto] = @original_FotoProduto) OR ([FotoProduto] IS NULL AND @original_FotoProduto IS NULL))" 
                    InsertCommand="INSERT INTO [adicionaProduto] ([NomeProduto], [FotoProduto]) VALUES (@NomeProduto, @FotoProduto)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [ProdutoId], [NomeProduto], [FotoProduto] FROM [adicionaProduto] WHERE (([CatPrincId] = @CatPrincId) AND ([SubcatId] = @SubcatId))" 
                    UpdateCommand="UPDATE [adicionaProduto] SET [NomeProduto] = @NomeProduto, [FotoProduto] = @FotoProduto WHERE [ProdutoId] = @original_ProdutoId AND (([NomeProduto] = @original_NomeProduto) OR ([NomeProduto] IS NULL AND @original_NomeProduto IS NULL)) AND (([FotoProduto] = @original_FotoProduto) OR ([FotoProduto] IS NULL AND @original_FotoProduto IS NULL))">
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
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatPrincId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="SubcatId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeProduto" Type="String" />
                        <asp:Parameter Name="FotoProduto" Type="String" />
                        <asp:Parameter Name="original_ProdutoId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeProduto" Type="String" />
                        <asp:Parameter Name="original_FotoProduto" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

