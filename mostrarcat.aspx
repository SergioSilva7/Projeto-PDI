<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="mostrarcat.aspx.cs" Inherits="mostrarcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="events">
		<div class="container">
			<h1 class="wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms">Categorias</h1>
			<div class="event-grids" id="event-grid">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="catId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal" CellPadding="10" CellSpacing="8" 
                    Width="934px" style="background-color: #FFFFFF">
                    <ItemTemplate>
                        <div class="col-md-12 event-grid wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                                        ImageUrl='<%# Eval("FotoCat", "fotos/{0}") %>' 
                                        PostBackUrl='<%# Eval("catId", "mostrarsubcat.aspx?cid={0}") %>' />
                                 <div class="nobis">
                                    <asp:LinkButton ID="LinkButton11" runat="server" 
                                        PostBackUrl='<%# Eval("catId", "mostrarsubcat.aspx?cid={0}") %>' 
                                        Text='<%# Eval("NomeCat") %>' 
                                        ></asp:LinkButton>
                             </div>
                   
                    
                </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    SelectCommand="SELECT * FROM [adicategoria]"></asp:SqlDataSource>
           
   <div class="clearfix"> </div>
			</div>
            </div>
</div>
  
</asp:Content>

