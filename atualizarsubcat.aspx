<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="atualizarsubcat.aspx.cs" Inherits="atualizarsubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            background-color: #000000;
        }
        .style5
        {
            width: 269px;
            color: #FFFFFF;
        }
        .style6
        {
            color: #000000;
            font-weight: 700;
            background-color: #FFFFFF;
        }
        .style7
        {
            color: #000000;
            background-color: #FFFFFF;
        }
        .style8
        {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style6" colspan="2">
                <h2>
                    Atualizar/Apagar Subcategoria</h2>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
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
                    DeleteCommand="DELETE FROM [adicategoria] WHERE [catId] = @original_catId" 
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
            <td class="style6" valign="top">
                <h3>
                    Subcategoria</h3>
            </td>
            <td align="left" style="color: #FFFFFF" class="style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="SubcatId" DataSourceID="SqlDataSource2" CssClass="style7" 
                    Width="481px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="FotoSubCat" 
                            DataImageUrlFormatString="fotos/{0}" HeaderText="Foto" 
                            ControlStyle-Width="300">
<ControlStyle Width="150px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="NomeSubCat" HeaderText="Nome" 
                            SortExpression="NomeSubCat" />
                        <asp:HyperLinkField DataNavigateUrlFields="Subcatid" 
                            DataNavigateUrlFormatString="detalhessubcatatuali.aspx?scid={0}" 
                            HeaderText="Atualizar" Text="Atualizar" >
                        <ControlStyle Font-Overline="False" Font-Underline="False" ForeColor="Black" />
                        </asp:HyperLinkField>
                        <asp:CommandField HeaderText="Apagar" ShowDeleteButton="True" >
                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [addsubcat] WHERE [SubcatId] = @original_SubcatId" 
                    InsertCommand="INSERT INTO [addsubcat] ([NomeSubCat], [FotoSubCat]) VALUES (@NomeSubCat, @FotoSubCat)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [SubcatId], [NomeSubCat], [FotoSubCat] FROM [addsubcat] WHERE ([CatPrincId] = @CatPrincId)" 
                    UpdateCommand="UPDATE [addsubcat] SET [NomeSubCat] = @NomeSubCat, [FotoSubCat] = @FotoSubCat WHERE [SubcatId] = @original_SubcatId AND (([NomeSubCat] = @original_NomeSubCat) OR ([NomeSubCat] IS NULL AND @original_NomeSubCat IS NULL)) AND (([FotoSubCat] = @original_FotoSubCat) OR ([FotoSubCat] IS NULL AND @original_FotoSubCat IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NomeSubCat" Type="String" />
                        <asp:Parameter Name="FotoSubCat" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatPrincId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeSubCat" Type="String" />
                        <asp:Parameter Name="FotoSubCat" Type="String" />
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeSubCat" Type="String" />
                        <asp:Parameter Name="original_FotoSubCat" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

