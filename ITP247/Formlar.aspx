<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="ITP247.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="text-center" colspan="2" style="height: 65px; font-size: xx-large; text-decoration: underline;">Formlar</td>
        </tr>
        <tr>
            <td style="width: 610px; height: 50px" class="text-center">
                <asp:Button ID="Button1" runat="server" Height="45px" Text="Personel Veri Giriş Formu" Width="468px" BorderStyle="Double" style="font-size: medium" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisi.aspx" />
            </td>
            <td style="height: 50px" class="text-center">
                <asp:Button ID="Button2" runat="server" Height="45px" style="margin-left: 0; font-size: medium;" Text="Maaş Veri Giriş Formu" Width="468px" BorderStyle="Double" OnClientClick="target='_blank';" PostBackUrl="~/MaasVeriGirisi.aspx" />
            </td>
        </tr>
        <tr>
            <td style="width: 610px; height: 35px"></td>
            <td style="height: 35px"></td>
        </tr>
        <tr>
            <td style="width: 610px; height: 50px" class="text-center">
                <asp:Button ID="Button3" runat="server" Height="45px" Text="Personel Veri Güncelleme Formu" Width="468px" BorderStyle="Double" style="font-size: medium" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGuncelleme.aspx" />
            </td>
            <td style="height: 50px" class="text-center">
                <asp:Button ID="Button6" runat="server" Height="45px" Text="Maaş Veri Güncelleme Formu" Width="468px" BorderStyle="Double" style="font-size: medium" OnClientClick="target='_blank';" PostBackUrl="~/MaasVeriGüncellemeFormu.aspx" />
            </td>
        </tr>
        <tr>
            <td style="width: 610px; height: 35px"></td>
            <td style="height: 35px"></td>
        </tr>
        <tr>
            <td style="width: 610px; height: 50px" class="text-center">
                <asp:Button ID="Button5" runat="server" Height="45px" Text="Personel Wizard Formu" Width="468px" BorderStyle="Double" style="font-size: medium" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisWizard.aspx" />
            </td>
            <td style="height: 50px" class="text-center">
                <asp:Button ID="Button4" runat="server" Height="45px" Text="Bölüm Veri Giriş Formu" Width="468px" BorderStyle="Double" style="font-size: medium" OnClientClick="target='_blank';" PostBackUrl="~/BolumVeriGiris.aspx" />
            </td>
        </tr>
        <tr>
            <td style="width: 610px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 610px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 610px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 610px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 610px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
