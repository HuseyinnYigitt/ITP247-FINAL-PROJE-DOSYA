<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Raporlar.aspx.cs" Inherits="ITP247.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width: 100%">
            <tr>
                <td colspan="2" style="height: 36px; font-size: xx-large; text-decoration: underline;">Raporlar</td>
            </tr>
            <tr>
                <td style="width: 650px" class="text-center">
                    <asp:Button ID="Button6" runat="server" Text="Bölüme Göre Personel Listesi" BorderStyle="Double" Height="35px" style="font-size: 12pt" Width="468px" OnClientClick="target='_blank';" PostBackUrl="~/BolumeGorePersonelListesi.aspx" />
                </td>
                <td class="text-center">
                    <asp:Button ID="Button7" runat="server" Text="Personele Göre Maaşlar" BorderStyle="Double" Height="35px" style="font-size: 12pt" Width="468px" OnClientClick="target='_blank';" PostBackUrl="~/PersoneleGoreMaaslar.aspx" />
                </td>
            </tr>
            <tr>
                <td style="width: 650px; height: 35px;"></td>
                <td style="height: 35px"></td>
            </tr>
            <tr>
                <td style="width: 650px" class="text-center">
                    <asp:Button ID="Button8" runat="server" Text="Personele Göre Yıllık Maaş Grafiği" BorderStyle="Double" Height="35px" style="font-size: 12pt" Width="468px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelGrafigi.aspx" />
                </td>
                <td class="text-center">
                    <asp:Button ID="Button9" runat="server" Text="Personel İletişim Raporu" BorderStyle="Double" Height="35px" style="font-size: 12pt" Width="468px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelIletisimRaporu.aspx" />
                </td>
            </tr>
            <tr>
                <td style="width: 650px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
