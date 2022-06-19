<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="atualizarcat.aspx.cs" Inherits="atualizarcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" bgcolor="Black" 
        style="color: #000000; background-color: #FFFFFF;">
    <tr>
        <td style="font-weight: 700" class="style1">
            <h2 style="color: #000000">
            Atualizar categoria</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="padding-left:10px;">
            <br />&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="catId" DataSourceID="SqlDataSource1" style="color: #000000" 
                Height="334px" Width="792px" >
                <Columns>
                    <asp:BoundField DataField="NomeCat" HeaderText="Nome" 
                        SortExpression="NomeCat" />
                    <asp:ImageField DataImageUrlField="FotoCat" 
                        DataImageUrlFormatString="fotos/{0}" HeaderText="Foto">
                        <ControlStyle Font-Underline="False" ForeColor="#FF0066" Height="75px" />
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="catid" 
                        DataNavigateUrlFormatString="detalhescatatuali.aspx?cid={0}" HeaderText="Atualizar" 
                        Text="Atualizar">
                    <ControlStyle Font-Underline="False" ForeColor="Black" Height="75px" />
                    </asp:HyperLinkField>
                    <asp:CommandField HeaderText="Apagar" ShowDeleteButton="True">
                    <ControlStyle Font-Underline="False" ForeColor="Black" Height="75px" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:bd %>" 
                DeleteCommand="DELETE FROM [adicategoria] WHERE [catId] = @original_catId" 
                InsertCommand="INSERT INTO [adicategoria] ([NomeCat], [FotoCat]) VALUES (@NomeCat, @FotoCat)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [adicategoria]" 
                UpdateCommand="UPDATE [adicategoria] SET [NomeCat] = @NomeCat, [FotoCat] = @FotoCat WHERE [catId] = @original_catId AND (([NomeCat] = @original_NomeCat) OR ([NomeCat] IS NULL AND @original_NomeCat IS NULL)) AND (([FotoCat] = @original_FotoCat) OR ([FotoCat] IS NULL AND @original_FotoCat IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_catId" Type="Decimal" />
                    <asp:Parameter Name="original_NomeCat" Type="String" />
                    <asp:Parameter Name="original_FotoCat" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NomeCat" Type="String" />
                    <asp:Parameter Name="FotoCat" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NomeCat" Type="String" />
                    <asp:Parameter Name="FotoCat" Type="String" />
                    <asp:Parameter Name="original_catId" Type="Decimal" />
                    <asp:Parameter Name="original_NomeCat" Type="String" />
                    <asp:Parameter Name="original_FotoCat" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

