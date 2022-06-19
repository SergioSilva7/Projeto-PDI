<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="pagprincipal.aspx.cs" Inherits="pagprincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    
    .banner-info1-grid h3
    {
       margin:0;
       }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <div class="banner">
		<div class="container">
			<div class="banner-info">
				<h1 class="animated fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms"> Sejam bem-vindos ao nosso website!
                    Aqui poderão ver e colocar receitas bastante deliciosas</span></h1>
				<div class="banner-info1-grid animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
					<ul id="flexiselDemo1">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>			
						
					</ul>
						<script type="text/javascript">
						    $(window).load(function () {
						        $("#flexiselDemo1").flexisel({
						            visibleItems: 3,
						            animationSpeed: 1000,
						            autoPlay: true,
						            autoPlaySpeed: 3000,
						            navigationTargetSelector: null,
						            pauseOnHover: true,
						            enableResponsiveBreakpoints: true,
						            responsiveBreakpoints: {
						                portrait: {
						                    changePoint: 480,
						                    visibleItems: 1
						                },
						                landscape: {
						                    changePoint: 640,
						                    visibleItems: 2
						                },
						                tablet: {
						                    changePoint: 768,
						                    visibleItems: 2
						                }
						            }
						        });

						    });
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
<!-- banner -->

	<div class="events">
		<div class="container">
			<h1 class="wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms">
                Receitas variadas</h1>
			<div class="event-grids" id="event-grid">
				<asp:DataList ID="DataList1" runat="server" DataKeyField="ProdutoId" 
                DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" 
                style="color: #000000; background-color: #FFFFFF;" Width="1250px">
                <ItemTemplate>
                <div class="col-md-12 event-grid wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                  <div class="nobis">
						<asp:ImageButton ID="ImageButton1" runat="server" Height="325px" 
                            ImageUrl='<%# Eval("FotoProduto", "fotos/{0}") %>' 
                            PostBackUrl='<%# Eval("ProdutoId", "detalhesprod.aspx?pid={0}") %>' 
                            Width="275px" />
						<asp:LinkButton ID="LinkButton13" runat="server"  PostBackUrl='<%# Eval("ProdutoId", "detalhesprod.aspx?pid={0}") %>' 
                        Text='<%# Eval("NomeProduto") %>'></asp:LinkButton>
                       
					</div>
                   
                    
                </div>
                    
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bd %>" 
                
                SelectCommand="SELECT top 4 [ProdutoId], [NomeProduto], [FotoProduto] FROM [adicionaProduto] ORDER BY newid()">
            </asp:SqlDataSource>
				
				<div class="clearfix"> </div>
			</div>
            </div>
</div>
  
            
         
            
       
</asp:Content>

