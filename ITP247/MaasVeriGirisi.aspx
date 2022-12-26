<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasVeriGirisi.aspx.cs" Inherits="ITP247.MaasVeriGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            width: 224px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 224px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 224px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style9"><strong>Personel Maasları Veri Giris Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Pers Adı=</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Tarihi=</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Maas Tarihini giriniz...</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Maas</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Maas Tutarını giriniz...</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Komisyonu=</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Maas Komisyonu Giriniz</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Kaydet" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_PersonelMaaslari(Pers_ID, Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon) VALUES (@Pers_ID, @Maas_Odeme_Tarihi, @Maas_Tutari, @Maas_Komisyon)" SelectCommand="SELECT tbl_Personeller.Pers_Isim, tbl_PersonelMaaslari.Maas_Odeme_Tarihi, tbl_PersonelMaaslari.Maas_Tutari, tbl_PersonelMaaslari.Maas_Komisyon FROM tbl_Personeller INNER JOIN tbl_PersonelMaaslari ON tbl_Personeller.Pers_ID = tbl_PersonelMaaslari.Pers_ID">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_ID" />
                                <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime" />
                                <asp:Parameter Name="Maas_Tutari" Type="Decimal" />
                                <asp:Parameter Name="Maas_Komisyon" Type="Decimal" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
