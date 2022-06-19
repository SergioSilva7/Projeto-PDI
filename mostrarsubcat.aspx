<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="~/mostrarsubcat.aspx.cs" Inherits="mostrarsubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
                   
            
          <div class="events">
		<div class="container">
			<h1 class="wow fadeInLeftBig" data-wow-duration="1000ms" data-wow-delay="300ms"> Subcategorias</h1>
			<div class="event-grids" id="event-grid">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="SubcatId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <div class="col-md-12 event-grid wow flipInY" data-wow-duration="1000ms" data-wow-delay="300ms">
                                    <asp:ImageButton ID="ImageButton1" runat="server" width="300px"  Height="300px"
                                        ImageUrl='<%# Eval("FotoSubCat", "fotos/{0}") %>' 
                                        PostBackUrl='<%# Eval("SubcatId", "mostrarreceitas.aspx?scid={0}") %>' />
                                  <div class="nobis">
                                    <asp:LinkButton ID="LinkButton11" runat="server" Font-Underline="False" 
                                        ForeColor="Black" 
                                        PostBackUrl='<%# Eval("SubcatId", "mostrarreceitas.aspx?scid={0}") %>' 
                                        style="background-color: #FFFFFF" Text='<%# Eval("NomeSubCat") %>'></asp:LinkButton>
                                    </div>
                   
                    
                </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [addsubcat] WHERE [SubcatId] = @original_SubcatId AND (([NomeSubCat] = @original_NomeSubCat) OR ([NomeSubCat] IS NULL AND @original_NomeSubCat IS NULL)) AND (([FotoSubCat] = @original_FotoSubCat) OR ([FotoSubCat] IS NULL AND @original_FotoSubCat IS NULL))" 
                    InsertCommand="INSERT INTO [addsubcat] ([NomeSubCat], [FotoSubCat]) VALUES (@NomeSubCat, @FotoSubCat)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [SubcatId], [NomeSubCat], [FotoSubCat] FROM [addsubcat] WHERE ([CatPrincId] = @MainCatId)" 
                    
                    UpdateCommand="UPDATE [addsubcat] SET [NomeSubCat] = @NomeSubCat, [FotoSubCat] = @FotoSubCat WHERE [SubcatId] = @original_SubcatId AND (([NomeSubCat] = @original_NomeSubCat) OR ([NomeSubCat] IS NULL AND @original_NomeSubCat IS NULL)) AND (([FotoSubCat] = @original_FotoSubCat) OR ([FotoSubCat] IS NULL AND @original_FotoSubCat IS NULL))" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeSubCat" Type="String" />
                        <asp:Parameter Name="original_FotoSubCat" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NomeSubCat" Type="String" />
                        <asp:Parameter Name="FotoSubCat" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MainCatId" QueryStringField="cid" 
                            Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeSubCat" Type="String" />
                        <asp:Parameter Name="FotoSubCat" Type="String" />
                        <asp:Parameter Name="original_SubcatId" Type="Decimal" />
                        <asp:Parameter Name="original_NomeSubCat" Type="String" />
                        <asp:Parameter Name="original_FotoSubCat" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <div class="clearfix"> </div>
			</div>
            </div>
</div>
</asp:Content>

