<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="VuaGao.SanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sản Phẩm</title>
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 426px;
        }
        .auto-style3 {
            width: 487px;
        }
    </style>

</head>
<body >
   
    <img src="Hinh/top.jpg" height="200px" width="100%" />
    <form id="form1" runat="server">
    <div id="bg"><img width="20%" height="100%" src="Hinh/vien1.jpg" /></div>
        <div id="menu" style="font-size:18px; color:black;">
		<ul>
		<li><a href="TrangChu1.aspx" target="b">Trang Chủ</a></li>
		<li><a href="SanPham.aspx" target="b">Sản Phẩm</a></li>
		<li><a href="KhuyenMai.aspx" target="b">Khuyến Mãi</a></li>
        <li><a href="TuyenDung.aspx" target="b">Tuyển Dụng</a></li>
        <li>
            <asp:TextBox ID="txtTimKiem" runat="server" Height="20px" Width="127px"></asp:TextBox>
            <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="30px" Width="80px" OnClick="btnTimKiem_Click" BackColor="White" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" />
        </li>
        <li><asp:Label ID="hello" runat="server" Text="Label" ForeColor="Black"></asp:Label></li>
        <li><asp:LinkButton ID="LinkButton1" runat="server" Text="   Đăng Xuất" OnClick="LinkButton1_Click"></asp:LinkButton></li>
       </ul>
	</div>
        <CENTER>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="215px" Width="199px" ImageUrl='<%# Eval("HINH") %>' />
                <br />
                <center>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TEN_HH") %>' Font-Size="Medium" ForeColor="Black"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' Font-Size="Medium" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="Black" Text="/KG"></asp:Label>
                </center>
            </ItemTemplate>
        </asp:DataList>
        </CENTER>
            
        <%-- Footer --%>
                <div id="footer" style="font-size:20px;">
            <center>
            <p>CÔNG TY TNHH MTV TIẾN ĐẠT</p>
            <p>Địa chỉ: 111/13, Thích Quảng Đức, Phường Phú Cường, Thành Phố Thủ Dầu Một,Tỉnh Bình Dương<br />
            <p>Điện thoại: 093.3937.541</p>
            <p>Email: <a style="color:red;" href="mailto:tiendat4296@gmail.com">tiendat4296@gmail.com</a></p>
            </center>
                <!-- / id footer --></div>
    </form>
 
</body>
</html>
