<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="VuaGao.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
     <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
    
<body>
    <div id="bg"><img width="100%" height="100%" src="Hinh/rice.jpg" /></div>  
    <form id="formdangky" runat="server" style="font-weight:bold;">
        <center><h1 style="color:green;">Đăng Ký Thành Viên</h1></center>
    <div id="dangky">
        <center>
        <table >
            <tr>
                <td>Tên Đăng Nhập</td>
                <td></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 
                </td>
            </tr>
            <tr>
                <td>Mật Khẩu</td>
                <td></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Nhập Lại Mật Khẩu</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td>Tên Người Dùng</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Số Điện Thoại</td>
                <td></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="HomePhone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Địa Chỉ</td>
                <td></td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btndangkydk0" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Text="Về Trang Chủ" Height="40px" OnClick="btndangkydk0_Click" Width="127px" />
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Button ID="btndangkydk" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Text="Đăng Ký" Height="40px" Width="127px" style="margin-left: 0px"  OnClick="btndangkydk_Click" />
                </td>
            </tr>
            </table>
        </center>
        <center><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" BackColor="#00CC00">Mật Khẩu Không Giống Nhau</asp:CompareValidator>
            <br /><asp:Label ID="thongbao" runat="server" Text=" " BackColor="#00CC00"></asp:Label>

        </center>
    </div>
    </form>
</body>
</html>
