<%@ Page Language="C#" AutoEventWireup="true" Codefile="PersoneleGoreMaaslar.aspx.cs" Inherits="ITP247.PersoneleGoreMaaslar" %>

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
            height: 30px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style3"><strong>Personel Göre Maaslar Listesi Raporu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Personel Adı:
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" Height="17px" Width="193px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Pers_ID">
                            <Columns>
                                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" ReadOnly="True" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" SortExpression="Pers_Isim" ReadOnly="True" />
                                <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                                <asp:BoundField DataField="Maas_Yili" HeaderText="Maas_Yili" ReadOnly="True" SortExpression="Maas_Yili" />
                                <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                                <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                                <asp:BoundField DataField="Ay_Adi" HeaderText="Ay_Adi" SortExpression="Ay_Adi" />
                                <asp:BoundField DataField="MaasToplam" HeaderText="MaasToplam" SortExpression="MaasToplam" ReadOnly="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" Width="113px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Pers_ID, Pers_Isim, Unvan, Maas_Yili, Maas_Tutari, Maas_Komisyon, Ay_Adi, MaasToplam FROM vw_PersonelAylikMaaslari WHERE (Pers_ID = @Pers_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
