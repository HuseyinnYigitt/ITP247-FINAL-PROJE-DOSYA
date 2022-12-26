<%@ Page Language="C#" AutoEventWireup="true" Codefile="WebForm1.aspx.cs" Inherits="ITP247.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">Personel Listesi Raporu</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                            <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                            <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Pers_Ise_Giris_Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                            <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Pers_Isten_Cikis_Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                            <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                            <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                            <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                            <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonellerListesi]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
