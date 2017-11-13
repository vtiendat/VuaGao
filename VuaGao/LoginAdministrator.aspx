<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdministrator.aspx.cs" Inherits="VuaGao.LoginAdministrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
<body>
    <form id="formdangky" runat="server" style="font-weight:bold;">
    <div id="bg"><img width="100%" height="100%" src="Hinh/loginad.jpg" />
        </div> 
       
    <center><h1>Đăng Nhập</h1></center>
    <div>
        <center>
        <table >
            <tr>
                <td class="auto-style4">Tên Đăng Nhập</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mật Khẩu</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btndangnhap" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Text="Đăng Nhập" Height="40px" OnClick="btndangkydk0_Click" Width="127px" />
                </td>
                
            </tr>
            </table>
        </center>

    </div>
        <center> <asp:Label ID="lbtc" runat="server" Text=" " ForeColor="Lime" Font-Bold="True" BackColor="#00CC00"></asp:Label></center>
    </form>
</body>
</html>
