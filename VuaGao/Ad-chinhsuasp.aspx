<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad-chinhsuasp.aspx.cs" Inherits="VuaGao.Ad_chinhsuasp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sản Phẩm</title>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="bg"><img width="100%" height="100%" src="Hinh/bgad.png" /></div> 
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Điều Chỉnh Sản Phẩm" ForeColor="Black" Font-Size="X-Large" style="text-align: left"></asp:Label>
        <center>
                <br />
                <asp:Button ID="btnThem" runat="server" Text="Thêm" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" OnClick="btnThem_Click" Width="94px" />
                <asp:Button ID="btnXoa" runat="server" Text="Xóa" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" OnClick="btnXoa_Click" Width="89px"/>
                <asp:Button ID="btnSua" runat="server" Text="Sửa" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" OnClick="btnSua_Click" Width="95px"/>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbTenHHsua" runat="server" Text="Chọn Mã Hàng Hóa Cần Sửa: " Visible="False" Font-Size="15px"></asp:Label>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="MA_HH" DataValueField="MA_HH" Visible="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT [MA_HH] FROM [HANGHOA]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbMaHH" runat="server" Text="Mã Hàng Hóa: " Visible="False" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtMaHH" runat="server" Visible="False" ForeColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbTenHH" runat="server" Text="Tên Hàng Hóa: "  Visible="False" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtTenHH" runat="server" Visible="False" ForeColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbDonVitinh" runat="server" Text="Đơn Vị Tính: "  Visible="False" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtDonViTinh" runat="server" Visible="False" ForeColor="Black">KG</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbDonGia" runat="server" Text="Đơn Giá: "  Visible="False" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtDonGia" runat="server" Visible="False" ForeColor="Black"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbMaLoaiHang" runat="server" Text="Mã Loại Hàng: "  Visible="False" Font-Size="15px"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MA_LOAIHANG" DataValueField="MA_LOAIHANG" Height="17px" style="margin-left: 0px" Width="135px" Visible="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT DISTINCT [MA_LOAIHANG] FROM [HANGHOA]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbHinh" runat="server" Text="Hình: "  Visible="False" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtHinh" runat="server" Visible="False" ForeColor="Black">Hinh/Gao/</asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnxacnhan" runat="server" Text="Xác Nhận Thêm" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" OnClick="btnxacnhan_Click" Visible="False"></asp:Button>
                <asp:Label ID="thongbao" runat="server" style="font-size:15px;" Text=" "></asp:Label>
                <asp:Button ID="btnxacnhansua" runat="server" BackColor="White" BorderColor="Black" ForeColor="Black" OnClick="btnxacnhansua_Click" Text="Xác Nhận Sửa" Visible="False" />
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbChonsp" runat="server" Text="Chọn Tên Sản Phẩm: " Visible="False"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="MA_HH" DataValueField="MA_HH" Visible="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT [MA_HH] FROM [HANGHOA]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnxacnhanxoa" runat="server" BackColor="White" BorderColor="Black" ForeColor="Black" Text="Xác Nhận Xóa" Visible="False" OnClick="btnxacnhanxoa_Click1" />
                        </td>
                    </tr>
                </table>
                <br />
            </center>
    </div>
    </form>
</body>
</html>
