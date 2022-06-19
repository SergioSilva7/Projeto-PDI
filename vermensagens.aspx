<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vermensagens.aspx.cs" Inherits="vermensagens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" >
    <tr>
        <td class="style6">
            <h2 style="color: #000000">
                Mensagens dos utilizadores</h2>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6" >
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNomes="MsgId" DataSourceID="SqlDataSource1" Width="1000px" >
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                        SortExpression="EmailId" />
                    <asp:BoundField DataField="Telemovel" HeaderText="Telemovel" SortExpression="Telemovel" />
                    <asp:BoundField DataField="Mensagem" HeaderText="Mensagem" 
                        SortExpression="Mensagem" />
                    <asp:BoundField DataField="DataMensagem" HeaderText="DataMensagem" 
                        SortExpression="DataMensagem" />
                    <asp:CommandField HeaderText="Apagar" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:bd %>" 
                DeleteCommand="DELETE FROM [contactos] WHERE [MsgId] = @original_MsgId " 
                InsertCommand="INSERT INTO [contactos] ([Nome], [EmailId], [Telemovel], [Mensagem], [DataMensagem]) VALUES (@Nome, @EmailId, @Telemovel, @Mensagem, @DataMensagem)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [contactos] ORDER BY [DataMensagem] DESC" 
                UpdateCommand="UPDATE [contactos] SET [Nome] = @Nome, [EmailId] = @EmailId, [Telemovel] = @Telemovel, [Mensagem] = @Mensagem, [DataMensagem] = @DataMensagem WHERE [MsgId] = @original_MsgId AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND (([Telemovel] = @original_Telemovel) OR ([Telemovel] IS NULL AND @original_Telemovel IS NULL)) AND (([Mensagem] = @original_Mensagem) OR ([Mensagem] IS NULL AND @original_Mensagem IS NULL)) AND (([DataMensagem] = @original_DataMensagem) OR ([DataMensagem] IS NULL AND @original_DataMensagem IS NULL))"
                onselected="SqlDataSource1_l">
                <DeleteParameters>
                    <asp:Parameter Name="original_MsgId" Type="Decimal" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_EmailId" Type="String" />
                    <asp:Parameter Name="original_Telemovel" Type="String" />
                    <asp:Parameter Name="original_Mensagem" Type="String" />
                    <asp:Parameter Name="original_DataMensagem" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Telemovel" Type="String" />
                    <asp:Parameter Name="Mensagem" Type="String" />
                    <asp:Parameter Name="DataMensagem" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Telemovel" Type="String" />
                    <asp:Parameter Name="Mensagem" Type="String" />
                    <asp:Parameter Name="DataMensagem" Type="DateTime" />
                    <asp:Parameter Name="original_MsgId" Type="Decimal" />
                    <asp:Parameter Name="original_Nome" Type="String" />
                    <asp:Parameter Name="original_EmailId" Type="String" />
                    <asp:Parameter Name="original_Telemovel" Type="String" />
                    <asp:Parameter Name="original_Mensagem" Type="String" />
                    <asp:Parameter Name="original_DataMensagem" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

