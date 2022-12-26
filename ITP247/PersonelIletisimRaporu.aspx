<%@ Page Language="C#" AutoEventWireup="true" Codefile="PersonelIletisimRaporu.aspx.cs" Inherits="ITP247.PersonelIletisimRaporu" %>

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
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            height: 183px;
        }
    </style>
</head>
<body>
    <table class="auto-style1" align="center">
        <tr>
            <td class="auto-style2"><strong>Personel İletişim Raporu</strong></td>
        </tr>
        </table>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonelIletisim]"></asp:SqlDataSource>
         
        <div class="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                      
                  <tr style ="background-color:lavender;">

                    <td>ID</td>
                    <td>İsim</td>
                    <td>Tel</td>
                    <td>Cep</td>
                    <td>Email</td>
                    <td>Bölüm</td>
                    <td>Ünvan</td>
                   
                  </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color:LightCyan  ;">

                        <td><%# Eval("Pers_ID") %></td>
                        <td><%# Eval("Pers_Isim") %></td>
                        <td><%# Eval("Pers_Tel") %></td>
                        <td><%# Eval("Pers_Cep") %></td>
                        <td><%# Eval("Pers_Email") %></td>
                        <td><%# Eval("Bolum") %></td>
                        <td><%# Eval("Unvan") %></td>
                     
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                     <tr style="background-color:LemonChiffon ;">

                        <td><%# Eval("Pers_ID") %></td>
                        <td><%# Eval("Pers_Isim") %></td>
                        <td><%# Eval("Pers_Tel") %></td>
                        <td><%# Eval("Pers_Cep") %></td>
                        <td><%# Eval("Pers_Email") %></td>
                        <td><%# Eval("Bolum") %></td>
                        <td><%# Eval("Unvan") %></td>

                    </tr>
                </AlternatingItemTemplate>


            </asp:Repeater>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
        </div>
    </form>
</body>
</html>
