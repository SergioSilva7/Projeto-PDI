<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listauti.aspx.cs" Inherits="listauti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 140%;
            color: #000000;
            background-color: #FFFFFF;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td style="font-weight: 700">
            <h2>
                Lista de utilizadores</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left"><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="UserName" DataSourceID="SqlDataSource1" Width="1149px">
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Morada" HeaderText="Morada" 
                        SortExpression="Morada" />
                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
                    
                    <asp:BoundField DataField="Telemovel" HeaderText="Telemovel" SortExpression="Telemovel" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                        SortExpression="UserName" />
                    <asp:BoundField DataField="Genero" HeaderText="Genero" 
                        SortExpression="Genero" />
                    <asp:BoundField DataField="Pais" HeaderText="Pais" 
                        SortExpression="Pais" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bd %>" 
                SelectCommand="SELECT [Nome], [Morada], [Cidade], [Telemovel], [UserName], [Genero], [Pais] FROM [registo]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

