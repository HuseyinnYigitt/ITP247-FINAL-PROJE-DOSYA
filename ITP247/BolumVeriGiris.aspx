<%@ Page Language="C#" AutoEventWireup="true" Codefile="BolumVeriGiris.aspx.cs" Inherits="ITP247.BolumVeriGiris" %>

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
            height: 46px;
            font-size: large;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style7 {
            height: 37px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            height: 37px;
            width: 167px;
        }
        .auto-style11 {
            width: 167px;
        }
    </style>
</head>
<body style="height: 380px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Bölüm Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bolum_ID" DataSourceID="SqlDataSource1" Width="686px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                                <asp:BoundField DataField="Bolum_Tel" HeaderText="Bolum_Tel" SortExpression="Bolum_Tel" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Veri Giriş Formunu Aç" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" Width="117px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" Text="Bölüm Ad:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="Bölüm Tel:" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label3" runat="server" Text="Müdür:" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Verileri Kaydet" Visible="False" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" DeleteCommand="DELETE FROM tbl_Bolumler WHERE Bolum_ID=@Bolum_ID" InsertCommand="INSERT INTO tbl_Bolumler(Bolum_Adi,Bolum_Tel,Mudur_ID)
VALUES(@Bolum_Adi,@Bolum_Tel,@Mudur_ID)" SelectCommand="SELECT tbl_Bolumler.Bolum_ID, tbl_Bolumler.Bolum_Adi, tbl_Bolumler.Bolum_Tel, tbl_Personeller.Pers_Isim FROM tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Mudur_ID = tbl_Personeller.Pers_ID" UpdateCommand="UPDATE tbl_Bolumler
SET Bolum_Adi=@Bolum_Adi,Bolum_Tel=@Bolum_Tel
WHERE Bolum_ID=@Bolum_ID
">
                <DeleteParameters>
                    <asp:Parameter Name="Bolum_ID" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Bolum_Adi" />
                    <asp:Parameter Name="Bolum_Tel" />
                    <asp:Parameter Name="Mudur_ID" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Bolum_Adi" />
                    <asp:Parameter Name="Bolum_Tel" />
                    <asp:Parameter Name="Bolum_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
