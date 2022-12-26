<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGirisi.aspx.cs" Inherits="ITP247.PersonelVeriGirisi" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 483px;
        }
        .auto-style4 {
            width: 483px;
        }
        .auto-style7 {
            height: 23px;
            width: 125px;
        }
        .auto-style8 {
            width: 125px;
        }
        .auto-style9 {
            height: 23px;
            width: 124px;
        }
        .auto-style10 {
            width: 124px;
        }
        .auto-style11 {
            height: 43px;
            width: 124px;
        }
        .auto-style12 {
            height: 43px;
            width: 483px;
        }
        .auto-style13 {
            height: 43px;
            width: 125px;
        }
        .auto-style14 {
            height: 43px;
        }
        .auto-style15 {
            height: 77px;
            width: 124px;
        }
        .auto-style16 {
            height: 77px;
            width: 483px;
        }
        .auto-style17 {
            height: 77px;
            width: 125px;
        }
        .auto-style18 {
            height: 77px;
        }
        .auto-style19 {
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
                    <td class="auto-style19" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Adı</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Adı Giriniz</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">Soyadı</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Cinsiyeti</td>
                    <td class="auto-style12">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style13">DTarihi</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Ünvan</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Unvan" DataValueField="Kategori_ID">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style17">Bölümü</td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Pers Giriş Tarihi</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2">
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" Text="Personel Aktif mi?" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Cep Tel</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td class="auto-style7">E-Mail</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Adresi</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">İlçesi</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="Pers_Kenti" DataValueField="Pers_Kenti" Height="16px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">İli</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Pers_Ili" DataValueField="Pers_Ili">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Sakla" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Cinsiyet_ID, Unvan_ID, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Cep, Bolum_ID, Pers_Email, Pers_Adresi, Pers_Kenti, Pers_Ili, Pers_Aktif_Mi) VALUES (@Pers_Adi, @Pers_Soyadi, @Cinsiyet_ID, @Unvan_ID, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Cep, @Bolum_ID, @Pers_Email, @Pers_Adresi, @Pers_Kenti, @Pers_Ili, @Pers_Aktif_Mi)" SelectCommand="SELECT Pers_ID,Pers_Adi, Pers_Soyadi,Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Adresi, Pers_Kenti, Pers_Ili, Pers_Il_Kodu,Pers_Tel,Pers_Cep,Pers_Email,Bolum_ID,Pers_Maas,Pers_Komisyon_Yuzdesi,Cinsiyet_ID,Pers_SGK_No,Pers_Aktif_Mi,Pers_Foto,Pers_CV,Pers_Isim,Pers_CV_File,Pers_CV_Web FROM tbl_Personeller">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Kenti" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Kategori_ID], [Unvan] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Açıklama..."></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_Kenti] FROM [tbl_Personeller]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_Ili] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
