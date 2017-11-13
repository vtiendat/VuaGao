<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="VuaGao.DatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đặt Hàng</title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 664px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <div id="bg"><img width="100%" height="100%" src="Hinh/vien.png" /></div> 
        <br />
        <br />
        <br />
        <h1 class="auto-style1">ĐẶT HÀNG</h1>

        
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="text-align: right"><strong>THÔNG TIN KHÁCH HÀNG</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Tên Khách Hàng:&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="lbTenKH" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Địa Chỉ:&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="lbDiaChi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Số Điện Thoại:&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="lbSdt" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4"><strong>THÔNG TIN ĐẶT HÀNG</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Tên Hàng Hóa</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TEN_HH" DataValueField="TEN_HH">
                        <asp:ListItem Selected="True">Gạo Đài Loan</asp:ListItem>
                        <asp:ListItem Value="DLOAN">Gạo Đài Loan</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT [TEN_HH] FROM [HANGHOA]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Số Lượng</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtSoLuong" runat="server">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Đơn Giá</td>
                <td class="auto-style6">
                    <asp:Label ID="lbDonGia" runat="server" OnDataBinding="Page_Load"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" ForeColor="Black" Height="40px" OnClick="Button1_Click" Text="Thành Tiền" Width="106px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Tổng Cộng</td>
                <td>
                    <asp:Label ID="lbThanhTien" runat="server" OnDataBinding="lbThanhTien_TextChanged"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDatHang" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Text="Đặt Hàng" Font-Size="X-Large" Height="45px" OnClick="btnDatHang_Click" Width="154px" />
                    <br />
                    <asp:Label ID="thongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
