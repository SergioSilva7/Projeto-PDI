<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="mostrarporcat.aspx.cs" Inherits="mostrarporcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style1
        {
            height: 32px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style6" colspan="2">
                <h1>
                Procura por categoria</h1>
            </td>
        </tr>
        <tr>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style6">
                Escolha a categoria</td>
            <td class="style7">
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
            <td class="style6">
                Escolha a subcategoria</td>
            <td class="style7">
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
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdutoId" 
                    DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" 
                    style="color: #000000; background-color: #FFFFFF;width:100%" >
                    <ItemTemplate>
                        <div class="col-md-12" >
                        <div class="event-grid wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" 
                                        ImageUrl='<%# Eval("FotoProduto", "fotos/{0}") %>' 
                                        PostBackUrl='<%# Eval("ProdutoId", "detalhesprod.aspx?pid={0}") %>' class="img-resposive"/>
                                <div class="nobis">
                                    <asp:LinkButton ID="LinkButton11" runat="server" Font-Underline="False" 
                                        ForeColor="White" 
                                        PostBackUrl='<%# Eval("ProdutoId", "detalhesprod.aspx?pid={0}") %>' 
                                        Text='<%# Eval("NomeProduto") %>' style="color: #000000"></asp:LinkButton>
                                </div>
                                </div>
                   
                    
                </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    onselected="SqlDataSource3_Selected" 
                    SelectCommand="SELECT [ProdutoId], [NomeProduto], [FotoProduto] FROM [adicionaProduto] WHERE (([CatPrincId] = @CatPrincId) AND ([SubcatId] = @SubcatId))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatPrincId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="SubcatId" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

