<%@ Page Language="C#" AutoEventWireup="true" Codefile="BolumeGorePersonelListesi.aspx.cs" Inherits="ITP247.BolumeGorePersonelListesi" %>

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
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style2"><strong>Bölüme Göre Personel Listesi Raporu</strong></td>
                </tr>
                <tr>
                    <td>
                        Bölüm Adı:
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="17px" Width="193px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Pers_ID" HeaderText="ID" SortExpression="Pers_ID" />
                                <asp:BoundField DataField="Pers_Adi" HeaderText="Adı" SortExpression="Pers_Adi" />
                                <asp:BoundField DataField="Pers_Soyadi" HeaderText="Soyadı" SortExpression="Pers_Soyadi" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Personel İsim" ReadOnly="True" SortExpression="Pers_Isim" />
                                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Doğum Tarihi" SortExpression="Pers_DTarihi" />
                                <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="İşe Giriş Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                                <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="İşten Çıkış Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                                <asp:BoundField DataField="Pers_Cep" HeaderText="Cep" SortExpression="Pers_Cep" />
                                <asp:BoundField DataField="Pers_Email" HeaderText="Email" SortExpression="Pers_Email" />
                                <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Aktif Mi" SortExpression="Pers_Aktif_Mi" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bölüm" SortExpression="Bolum_Adi" />
                                <asp:BoundField DataField="Unvan" HeaderText="ünvan" SortExpression="Unvan" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonellerListesi] Where Bolum_ID=@Bolum_ID">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
