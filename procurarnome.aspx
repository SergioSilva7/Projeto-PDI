<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="procurarnome.aspx.cs" Inherits="procurarnome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-weight: bold;
        }
        .style7
        {
            width: 662px;
        }
        .style4
        {
            width: 964px;
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
       <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <h1>Procura pelo nome da receita</h1></td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Nome da receita</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Procurar" 
                    style="font-weight: 700" class="btn btn-danger" />
            </td>
        </tr>
         <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label2" runat="server"></asp:Label>
             </td>
        </tr> 
         <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6" colspan="2">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ProdutoId" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    
                    SelectCommand="SELECT * FROM [adicionaProduto] WHERE ([NomeProduto] LIKE '%' + @NomeProduto + '%')" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="NomeProduto" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                </td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>  <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr> <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

