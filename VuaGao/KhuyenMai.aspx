<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KhuyenMai.aspx.cs" Inherits="VuaGao.KhuyenMai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Khuyến Mãi</title>
          <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />
		<noscript>
			<link rel="stylesheet" type="text/css" href="css/noscript.css" />
		</noscript></head>
<body>
    <img src="Hinh/top.jpg" height="200px" width="100%" />
    <form id="form1" runat="server">

        <div id="menu" style="font-size:18px; color:black;">
		<ul>
		<li><a href="TrangChu1.aspx" target="b">Trang Chủ</a></li>
		<li><a href="SanPham.aspx" target="b">Sản Phẩm</a></li>  
		<li><a href="KhuyenMai.aspx" target="b">Khuyến Mãi</a></li>
        <li><a href="TuyenDung.aspx" target="b">Tuyển Dụng</a></li>
            </ul>
	</div>

        <a href="KhuyenMai/KhaiTruong.aspx"><img style="height:300px; width:650px; float:right;" src="Hinh/wall/khaitruong.jpg" /></a>
        <a href="KhuyenMai/Voucher.aspx"><img style="height:300px; width:650px; float:left;" src="Hinh/wall/KM.jpg" /></a>
    <%-- Footer --%>
                <div id="footer" style="font-size:20px; position:absolute; bottom:-200px; left:0; width:100%;">
            <center>
            <p>CÔNG TY TNHH MTV TIẾN ĐẠT</p>
            <p>Địa chỉ: 111/13, Thích Quảng Đức, Phường Phú Cường, Thành Phố Thủ Dầu Một,Tỉnh Bình Dương<br />
            <p>Điện thoại: 093.3937.541</p>
            <p>Email: <a style="color:red;" href="mailto:tiendat4296@gmail.com">tiendat4296@gmail.com</a></p>
            </center>
               </div>
    </form>
</body>
</html>
