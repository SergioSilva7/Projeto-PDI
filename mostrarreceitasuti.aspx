<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="mostrarreceitasuti.aspx.cs" Inherits="mostrarreceitasuti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 51px;
        }
        .auto-style3 {
            margin-left: 389px;
            margin-top: 11;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="events">
		<div class="container">
			<h1 class="wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms"> 
                Receitas dos utilizadores</h1>
			<div class="auto-style1">
                <div>
                </div>
                <div class="auto-style2">
                
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
			<div class="event-grids" id="event-grid">
       
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdutoId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
                    Width="961px">
                    <ItemTemplate>
                        <div class="col-md-12" >
                        <div class="event-grid wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" width="300px"
                                        ImageUrl='<%# Eval("FotoProduto", "fotos/{0}") %>' 
                                        
                                        PostBackUrl='<%# Eval("ProdutoId", "detalhesproduti.aspx?pid={0}") %>' />
                            <div class="nobis">
                                    <asp:LinkButton ID="LinkButton12" runat="server" Font-Underline="False" 
                                        ForeColor="Black" 
                                        PostBackUrl='<%# Eval("ProdutoId", "detalhesproduti.aspx?pid={0}") %>' 
                                        Text='<%# Eval("NomeProduto") %>'></asp:LinkButton>
                                 </div>
                                </div>
                   
                    
                </div>
                    </ItemTemplate>
                </asp:DataList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    
                    SelectCommand="SELECT [ProdutoId], [NomeProduto], [FotoProduto] FROM [adiProdutoUtilizador] where estado=@st" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Aprovado" Name="st" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="clearfix"> </div>
			</div>
            </div>
</div>
</asp:Content>

