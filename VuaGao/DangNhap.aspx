<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="VuaGao.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 69%;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
<body>
    <form id="formdangnhap" runat="server" style="font-weight:bold;">
    <div id="bg"><img width="100%" height="100%" src="Hinh/rice.jpg" />
        </div> 
       
    <center><h1>Đăng Nhập</h1></center>
    <div id="dangnhap">
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
                <td class="auto-style1">
                    <asp:Button ID="btntrangchu" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Text="Về Trang Chủ" Height="40px" style="margin-left: 0px" Width="127px" OnClick="btntrangchu_Click" />
                </td>
            </tr>
            </table>
        </center>

    </div>
        <center> <asp:Label ID="lbtc" runat="server" Text=" " ForeColor="Lime" Font-Bold="True" BackColor="#00CC00"></asp:Label></center>
    </form>
</body>
</html>
