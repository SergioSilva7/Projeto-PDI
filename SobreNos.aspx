<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="SobreNos.aspx.cs" Inherits="SobreNos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 647px;
            font-weight: 700;
            color: #9e0808;
            background-color: #FFFFFF;
        }
        .style8
        {
            background-color: #FFFFFF;
        }
        .style9
        {
            width: 647px;
            font-weight: 700;
            color: #000000;
            background-color: #FFFFFF;
            height: 23px;
        }
        .style10
        {
            background-color: #FFFFFF;
            height: 23px;
        }
        .style11{
            width: 647px;
            font-weight: 700;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style1 {
            width: 647px;
            font-weight: 700;
            color: #000000;
            background-color: #FFFFFF;
            height: 394px;
        }
        .auto-style2 {
            background-color: #FFFFFF;
            height: 394px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7">
                <h1>
                    Sobre nós</h1>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="auto-style1" valign="top">
                &nbsp;A CookFun é um projeto que tem como objetivo tornar a culinária mais fácil e 
                acessível a todos,&nbsp;sendo que fornece um conjunto de receitas para todo o tipo 
                de pessoas. É um projeto que incentiva as pessoas a interagirem umas com as outras, fazendo com que estas aprendam de uma forma mais eficiente e eficaz.&nbsp;Aqui podem
                dar a conhecer as suas receitas mais criativas e deliciosas para que todo o mundo possa ver
                e apreciar as vossas qualidades de chef. Este site pode ajudar-te a seres um cozinheiro
                muito melhor e a tornares a tua vida mais saúdavel. O nosso site chama-se CookFun, isto porque nós queremos que a cozinha seja divertida. O nosso slogan é &quot;Com pouco, fazes muito&quot;!


                 </td>
            <td align="center" class="auto-style2">
                <asp:Image ImageUrl="~/images/CookFun_300.png" runat="server" Width="261px" 
                    style="background-color: #000000" Height="291px" />
            </td>
        </tr>
    </table>
</asp:Content>
