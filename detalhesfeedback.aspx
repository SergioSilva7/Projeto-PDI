<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="detalhesfeedback.aspx.cs" Inherits="detalhesfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" style="color: #000000; background-color: #FFFFFF">
        <tr>
            <td style="font-weight: 700">
                <h2>
                Detalhes do feedback</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left"><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNomes="FeedbackId" DataSourceID="SqlDataSource1" Width="963px">
                    <Columns>
                        <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" 
                            SortExpression="FeedbackId" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" 
                            SortExpression="Nome" />
                        <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                            SortExpression="EmailId" />
                        <asp:BoundField DataField="Telemovel" HeaderText="Telemovel" SortExpression="Telemovel" />
                        <asp:BoundField DataField="WebsiteTotal" HeaderText="WebsiteTotal" 
                            SortExpression="WebsiteTotal" />
                        <asp:BoundField DataField="Websitedesign" HeaderText="Websitedesign" 
                            SortExpression="Websitedesign" />
                        <asp:BoundField DataField="MaisReceitas" HeaderText="MaisReceitas" 
                            SortExpression="MaisReceitas" />
                        <asp:BoundField DataField="InfoSite" HeaderText="InfoSite" 
                            SortExpression="InfoSite" />
                        <asp:BoundField DataField="Sugestao" HeaderText="Sugestao" 
                            SortExpression="Sugestao" />
                        <asp:BoundField DataField="DataMensagem" HeaderText="DataMensagem" 
                            SortExpression="DataMensagem" />
                        <asp:CommandField HeaderText="Apagar" ShowDeleteButton="True">
                        <ControlStyle Font-Underline="False" ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:bd %>" 
                    DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @original_FeedbackId" 
                    InsertCommand="INSERT INTO [Feedback] ([Nome], [EmailId], [Telemovel], [WebsiteTotal], [Websitedesign], [MaisReceitas], [InfoSite], [Sugestao], [DataMensagem]) VALUES (@Nome, @EmailId, @Telemovel, @WebsiteTotal, @Websitedesign, @MaisReceitas, @InfoSite, @Sugestao, @DataMensagem)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Feedback]" 
                    
                    
                    UpdateCommand="UPDATE [Feedback] SET [Nome] = @Nome, [EmailId] = @EmailId, [Telemovel] = @Telemovel, [WebsiteTotal] = @WebsiteTotal, [Websitedesign] = @Websitedesign, [MaisReceitas] = @MaisReceitas, [InfoSite] = @InfoSite, [Sugestao] = @Sugestao, [DataMensagem] = @DataMensagem WHERE [FeedbackId] = @original_FeedbackId AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND (([Telemovel] = @original_Telemovel) OR ([Telemovel] IS NULL AND @original_Telemovel IS NULL)) AND (([WebsiteTotal] = @original_WebsiteTotal) OR ([WebsiteTotal] IS NULL AND @original_WebsiteTotal IS NULL)) AND (([Websitedesign] = @original_Websitedesign) OR ([Websitedesign] IS NULL AND @original_Websitedesign IS NULL)) AND (([MaisReceitas] = @original_MaisReceitas) OR ([MaisReceitas] IS NULL AND @original_MaisReceitas IS NULL)) AND (([SiteInfo] = @original_SiteInfo) OR ([SiteInfo] IS NULL AND @original_SiteInfo IS NULL)) AND (([Sugestao] = @original_Sugestao) OR ([Sugestao] IS NULL AND @original_Sugestao IS NULL)) AND (([DataMensagem] = @original_DataMensagem) OR ([DataMensagem] IS NULL AND @original_DataMensagem IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                        <asp:Parameter Name="original_Nome" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_Telemovel" Type="String" />
                        <asp:Parameter Name="original_WebsiteTotal" Type="String" />
                        <asp:Parameter Name="original_Websitedesign" Type="String" />
                        <asp:Parameter Name="original_MaisReceitas" Type="String" />
                        <asp:Parameter Name="original_SiteInfo" Type="String" />
                        <asp:Parameter Name="original_Sugestao" Type="String" />
                        <asp:Parameter Name="original_DataMensagem" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="Telemovel" Type="String" />
                        <asp:Parameter Name="WebsiteTotal" Type="String" />
                        <asp:Parameter Name="Websitedesign" Type="String" />
                        <asp:Parameter Name="MaisReceitas" Type="String" />
                        <asp:Parameter Name="SiteInfo" Type="String" />
                        <asp:Parameter Name="Sugestao" Type="String" />
                        <asp:Parameter Name="DataMensagem" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nome" Type="String" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="Telemovel" Type="String" />
                        <asp:Parameter Name="WebsiteTotal" Type="String" />
                        <asp:Parameter Name="Websitedesign" Type="String" />
                        <asp:Parameter Name="MaisReceitas" Type="String" />
                        <asp:Parameter Name="SiteInfo" Type="String" />
                        <asp:Parameter Name="Sugestao" Type="String" />
                        <asp:Parameter Name="DataMensagem" Type="DateTime" />
                        <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                        <asp:Parameter Name="original_Nome" Type="String" />
                        <asp:Parameter Name="original_EmailId" Type="String" />
                        <asp:Parameter Name="original_Telemovel" Type="String" />
                        <asp:Parameter Name="original_WebsiteTotal" Type="String" />
                        <asp:Parameter Name="original_Websitedesign" Type="String" />
                        <asp:Parameter Name="original_MaisReceitas" Type="String" />
                        <asp:Parameter Name="original_SiteInfo" Type="String" />
                        <asp:Parameter Name="original_Sugestao" Type="String" />
                        <asp:Parameter Name="original_DataMensagem" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

