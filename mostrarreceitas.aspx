<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="mostrarreceitas.aspx.cs" Inherits="mostrarreceitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
         <div class="events">
		<div class="container">
			<h1 class="wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms"> 
                Receitas</h1>
			<div class="event-grids" id="event-grid">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdutoId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
                    style="color: #ff0000; background-color: #ffffff;width:100%" >
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
                
                <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    
                    SelectCommand="SELECT [ProdutoId], [NomeProduto], [FotoProduto] FROM [adicionaProduto] WHERE ([SubcatId] = @SubcatId)" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="SubcatId" QueryStringField="scid" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
            <div class="clearfix"> </div>
			</div>
            </div>
</div>
</asp:Content>

