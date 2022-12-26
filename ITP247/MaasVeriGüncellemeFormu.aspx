<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasVeriGüncellemeFormu.aspx.cs" Inherits="ITP247.MaasVeriGüncellemeFormu" %>

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
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 421px;
        }
        .auto-style4 {
            width: 421px;
        }
        .auto-style5 {
            height: 23px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2"><strong>Personel Maasın Güncellenmesi veya silinmesi</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Seciniz</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" />
                                <asp:BoundField DataField="Maas_Odeme_Tarihi" HeaderText="Maas_Odeme_Tarihi" SortExpression="Maas_Odeme_Tarihi" />
                                <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                                <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" DeleteCommand="DELETE FROM tbl_PersonelMaaslari
WHERE Maas_ID=@Maas_ID" SelectCommand="SELECT [Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon] FROM [tbl_PersonelMaaslari] WHERE Pers_ID=@Pers_ID" UpdateCommand="UPDATE tbl_PersonelMaaslari
SET Pers_ID=@Pers_ID, Maas_Odeme_Tarihi=@Maas_Odeme_Tarihi, Maas_Tutari=@Maas_Tutari, Maas_Komisyon=@Maas_Komisyon
WHERE Maas_ID=@Maas_ID">
            <DeleteParameters>
                <asp:Parameter Name="Maas_ID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pers_ID" />
                <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime"/>
                <asp:Parameter Name="Maas_Tutari" Type="Decimal" />
                <asp:Parameter Name="Maas_Komisyon" Type="Decimal" />
                <asp:Parameter Name="Maas_ID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
    </form>
</body>
</html>
