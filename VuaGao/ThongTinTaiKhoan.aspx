<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTaiKhoan.aspx.cs" Inherits="VuaGao.ThongTinTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông Tin Tài Khoản</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 669px;
        }
        .auto-style5 {
            text-align: right;
            width: 669px;
        }
        .auto-style8 {
            width: 669px;
        }
        .auto-style11 {
            text-align: right;
            width: 663px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
        }
        .auto-style13 {
            text-align: right;
            width: 663px;
        }
        .auto-style14 {
            width: 663px;
        }
    </style>
         <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="bg"><img width="100%" height="100%" src="Hinh/thongtin.jpeg" /></div> 
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Tên Tài Khoản</td>
            <td class="auto-style2">
                <asp:Label ID="lbTenTK" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tên Người Dùng</td>
            <td class="auto-style2">
                <asp:Label ID="lbTenND" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email</td>
            <td class="auto-style2">
                <asp:Label ID="lbEmail" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Địa Chỉ</td>
            <td>
                <asp:Label ID="lbDiachi" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Số Điện Thoại</td>
            <td>
                <asp:Label ID="lbSoDT" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:LinkButton ID="lbtnDoiTT" runat="server" OnClick="lbtnDoiTT_Click">Đổi Thông Tin Tài Khoản</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            
    </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lbMKcu" runat="server" Text="Mật Khẩu Cũ" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtMKcu" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lbMKmoi" runat="server" Text="Mật Khẩu Mới" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMKmoi" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lbmail" runat="server" Text="Email" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lbDC" runat="server" Text="Địa Chỉ" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDiachi" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" ForeColor="Black" OnClick="Button1_Click" style="text-align: right" Text="Về Trang Chủ" Width="120px" Height="35px" />
                </td>
                <td>
                <asp:Button ID="btncapnhap" runat="server" OnClick="btncapnhap_Click" Text="Cập Nhập" Width="117px" Visible="False" BackColor="White" BorderColor="Black" ForeColor="Black" Height="39px" style="margin-bottom: 12px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Label ID="thongbao" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
