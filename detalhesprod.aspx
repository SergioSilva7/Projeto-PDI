<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="detalhesprod.aspx.cs" Inherits="detalhesprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="single">
	<div class="container">
		<h1 class="animated fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms">
                    Detalhes da receita</h1>
		<div class="single-left wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms">
			
			 <asp:ImageButton ID="ImageButton1" runat="server" 
                     ImageAlign="TextTop" class="img-responsive" width="500px"/>
		</div>
		<div class="single-right wow fadeInRightBig" data-wow-duration="1000ms" data-wow-delay="300ms">
			
      <ul class="list-group">
       <li class="list-group-item"> <span class="subtitle"> 
                Categoria : </span>
            <span>
                <asp:Label ID="Label2" runat="server" CssClass="style12"></asp:Label>
            </span>
       </li>
       <li class="list-group-item "> <span class="subtitle"> 
                Subcategoria: </span>
            <span>
                <asp:Label ID="Label3" runat="server" CssClass="style12"></asp:Label>
            </span>
       </li><li class="list-group-item"> 
            <span class="subtitle"> 
                Nome da receita : </span>
            <span>
                <asp:Label ID="Label4" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li><li class="list-group-item list-sub"> 
           <span class="subtitle"> 
                Ingredientes : </span> <br /> <br />
            <span>
                <asp:Label ID="Label5" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li><li class="list-group-item"> 
            <span class="subtitle"> 
                Modo de Preparação : </span> <br /> <br />
            <span>
                <asp:Label ID="Label6" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li>
          <li class="list-group-item"> <span class="subtitle"> 
                Tempo de confeção : </span>
            <span>
                <asp:Label ID="Label10" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li><li class="list-group-item"> <span class="subtitle"> 
                Dificuldade : </span>
            <span>
                <asp:Label ID="Label11" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li><li class="list-group-item"> <span class="subtitle"> 
                Custo : </span>
            <span>
                <asp:Label ID="Label12" runat="server" CssClass="style12"></asp:Label>
            </span>
         </li><li class="list-group-item"> 
            <span>
                &nbsp;</span>
          
                <span class="style12">&nbsp;
                </span>
                  </li>
       </ul>
           
		</div>
		<div class="clearfix"> </div>
	
		
		
	
	
      <br />
    <asp:Panel ID="Panel2" runat="server">
        <table class="table">
            <tr>
                <td class="style18">
                    <h2>
                        Comente</h2>
                </td>
            </tr>
           
            <tr>
                <td class="style18">
                    <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine" 
                        Width="42%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Button ID="Button3" runat="server" Text="Comente" 
                        onclick="Button3_Click" class="btn btn-danger" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
       <div class="three-com">
         <h2 class="wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms"> <asp:Label ID="Label8" runat="server"></asp:Label></h2>
                   <asp:DataList ID="DataList1" runat="server" DataKeyField="ComentarioID" 
                        DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                 
                   	<div class="tom-grid wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
				<div class="tom">
					<img src="images/co.png" alt=" " />
				</div>
               <div class="tom-right">
					<div class="Hardy">
						<h4>  Comentario de:
                            <asp:Label ID="CommentByLabel" runat="server" Text='<%# Eval("ComentarioDe") %>' /></h4>
						<p><label> DataComentario:
                            <asp:Label ID="CommentDateLabel" runat="server" 
                                Text='<%# Eval("DataComentario") %>' /></label></p>
					</div>
					<div class="reply">
						
					</div>
					<div class="clearfix"> </div>
					<p class="lorem"> Comentario:
                            <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comentario") %>' /></p>
				</div>
				<div class="clearfix"> </div>
			</div>
                
                        </ItemTemplate>
                    </asp:DataList>  </div>  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bd %>" 
                        SelectCommand="SELECT * FROM [comentario] WHERE ([RecipeID] = @RecipeID)" 
                        onselected="SqlDataSource1_Selected">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="RecipeID" QueryStringField="pid" 
                                Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
           </div>
	</div>
    </asp:Panel>
</asp:Content>

