<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGuncelleme.aspx.cs" Inherits="ITP247.PersonelVeriGuncelleme" %>

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
            text-align: left;
        }
        .auto-style3 {
            width: 166px;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong class="auto-style4">Personel Veri Güncelleme</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Adı :</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" Height="17px" Width="148px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                                <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                                <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                                <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Pers_Ise_Giris_Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                                <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Pers_Isten_Cikis_Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                                <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi" />
                                <asp:BoundField DataField="Pers_Kenti" HeaderText="Pers_Kenti" SortExpression="Pers_Kenti" />
                                <asp:BoundField DataField="Pers_Ili" HeaderText="Pers_Ili" SortExpression="Pers_Ili" />
                                <asp:BoundField DataField="Pers_Il_Kodu" HeaderText="Pers_Il_Kodu" SortExpression="Pers_Il_Kodu" />
                                <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                                <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                                <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                                <asp:BoundField DataField="Pers_Komisyon_Yuzdesi" HeaderText="Pers_Komisyon_Yuzdesi" SortExpression="Pers_Komisyon_Yuzdesi" />
                                <asp:BoundField DataField="Cinsiyet_ID" HeaderText="Cinsiyet_ID" SortExpression="Cinsiyet_ID" />
                                <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID" />
                                <asp:BoundField DataField="Pers_SGK_No" HeaderText="Pers_SGK_No" SortExpression="Pers_SGK_No" />
                                <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı kapat" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Soyadi, Pers_Isim, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi, Pers_Adresi, Pers_Kenti, Pers_Ili, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Cinsiyet_ID, Unvan_ID, Pers_SGK_No, Pers_Aktif_Mi FROM tbl_Personeller WHERE (Pers_ID = @Pers_ID)" UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Ise_Giris_Tarihi = @Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi = @Pers_Isten_Cikis_Tarihi, Pers_Adresi = @Pers_Adresi, Pers_Kenti = @Pers_Kenti, Pers_Ili = @Pers_Ili, Pers_Tel = @Pers_Tel, Pers_Il_Kodu = @Pers_Il_Kodu, Pers_Cep = @Pers_Cep, Pers_Email = @Pers_Email, Bolum_ID = @Bolum_ID, Pers_Maas = @Pers_Maas, Pers_Komisyon_Yuzdesi = @Pers_Komisyon_Yuzdesi, Cinsiyet_ID = @Cinsiyet_ID, Unvan_ID = @Unvan_ID, Pers_SGK_No = @Pers_SGK_No, Pers_Aktif_Mi = @Pers_Aktif_Mi WHERE(Pers_ID = @Pers_ID)" DeleteCommand="DELETE FROM [tlb_Personeller] WHERE [Pers_ID] =@Pers_ID" InsertCommand="INSERT INTO tbl_Personeller(Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi, Pers_Adresi, Pers_Ili, Pers_Kenti, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Bolum_ID, Pers_Email, Pers_Maas, Cinsiyet_ID, Pers_Komisyon_Yuzdesi, Unvan_ID, Pers_SGK_No, Pers_Aktif_Mi) VALUES (@Pers_ID, @Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Isten_Cikis_Tarihi, @Pers_Adresi, @Pers_Ili, @Pers_Kenti, @Pers_Il_Kodu, @Pers_Tel, @Pers_Cep, @Bolum_ID, @Pers_Email, @Pers_Maas, @Cinsiyet_ID, @Pers_Komisyon_Yuzdesi, @Unvan_ID, @Pers_SGK_No, @Pers_Aktif_Mi)">
                            <DeleteParameters>
                                <asp:Parameter Name="Pers_ID" />
                            </DeleteParameters>
                            
                            <InsertParameters>
                                <asp:Parameter Name="Pers_ID" />
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Kenti" />
                                <asp:Parameter Name="Pers_Il_Kodu" />
                                <asp:Parameter Name="Pers_Tel" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Pers_Maas" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Pers_Komisyon_Yuzdesi" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Pers_SGK_No" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" Type="DateTime" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" Type="DateTime" />
                                <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" Type="DateTime"/>
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Kenti" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Tel" />
                                <asp:Parameter Name="Pers_Il_Kodu" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Maas" Type ="Decimal"/>
                                <asp:Parameter Name="Pers_Komisyon_Yuzdesi" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Pers_SGK_No" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                                <asp:Parameter Name="Pers_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
