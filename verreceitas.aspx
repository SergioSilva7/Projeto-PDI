<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="verreceitas.aspx.cs" Inherits="verreceitas" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>
                <h2>
                    Receitas adicionadas pelo utilizador</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ProdutoId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:ImageField DataImageUrlField="FotoProduto" 
                            DataImageUrlFormatString="fotos/{0}" HeaderText="Picture">
                            <ControlStyle Height="125px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="NomeProduto" HeaderText="NomeProduto" 
                            SortExpression="NomeProduto" />
                        <asp:BoundField DataField="Ingredientes" HeaderText="Ingredientes" 
                            HtmlEncode="False" SortExpression="Ingredientes" />
                        <asp:BoundField DataField="ModoDePreparacao" HeaderText="ModoDePreparacao" HtmlEncode="False" 
                            SortExpression="ModoDePreparacao" />
                        <asp:BoundField DataField="colocadopor" HeaderText="colocadopor" 
                            SortExpression="colocadopor" />
                        <asp:TemplateField HeaderText="estado" SortExpression="estado">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    SelectedValue='<%# Bind("estado") %>'>
                                    <asp:ListItem>A aguardar</asp:ListItem>
                                    <asp:ListItem>Aprovado</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Atualizar/Apagar" ShowEditButton="True" 
                            ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [adiProdutoUtilizador] WHERE [ProdutoId] = @original_ProdutoId" 
                    InsertCommand="INSERT INTO [adiProdutoUtilizador] ([CatPrincId], [SubcatId], [NomeProduto], [Ingredientes], [ModoDePreparacao], [FotoProduto], [colocadopor], [estado]) VALUES (@CatPrincId, @SubcatId, @NomeProduto, @Ingredientes, @ModoDePreparacao, @FotoProduto, @colocadopor, @estado)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [adiProdutoUtilizador] WHERE ([estado] = @estado)" 
                    
                    UpdateCommand="UPDATE [adiProdutoUtilizador] SET [estado] = @estado WHERE [ProdutoId] = @original_ProdutoId" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProdutoId" Type="Decimal" />
                        <asp:Parameter Name="original_CatPrincId" Type="Decimal" />
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeProduto" Type="String" />
                        <asp:Parameter Name="original_Ingredientes" Type="String" />
                        <asp:Parameter Name="original_ModoDePreparacao" Type="String" />
                        <asp:Parameter Name="original_FotoProduto" Type="String" />
                        <asp:Parameter Name="original_colocadopor" Type="String" />
                        <asp:Parameter Name="original_estado" Type="String" />
                        
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CatPrincId" Type="Decimal" />
                        <asp:Parameter Name="SubcatId" Type="Decimal" />
                        <asp:Parameter Name="NomeProduto" Type="String" />
                        <asp:Parameter Name="Ingredientes" Type="String" />
                        <asp:Parameter Name="ModoDePreparacao" Type="String" />
                        <asp:Parameter Name="FotoProduto" Type="String" />
                        <asp:Parameter Name="colocadopor" Type="String" />
                        <asp:Parameter Name="estado" Type="String" />
                        
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="A aguardar" Name="estado" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CatPrincId" Type="Decimal" />
                        <asp:Parameter Name="SubcatId" Type="Decimal" />
                        <asp:Parameter Name="NomeProduto" Type="String" />
                        <asp:Parameter Name="Ingredientes" Type="String" />
                        <asp:Parameter Name="ModoDePreparacao" Type="String" />
                        <asp:Parameter Name="FotoProduto" Type="String" />
                        <asp:Parameter Name="colocadopor" Type="String" />
                        <asp:Parameter Name="estado" Type="String" />
                        <asp:Parameter Name="original_ProdutoId" Type="Decimal" />
                        <asp:Parameter Name="original_CatPrincId" Type="Decimal" />
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeProduto" Type="String" />
                        <asp:Parameter Name="original_Ingredientes" Type="String" />
                        <asp:Parameter Name="original_ModoDePreparacao" Type="String" />
                        <asp:Parameter Name="original_FotoProduto" Type="String" />
                        <asp:Parameter Name="original_colocadopor" Type="String" />
                        <asp:Parameter Name="original_estado" Type="String" />
                        
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

