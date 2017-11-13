<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="VuaGao.Administration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration</title>
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <link rel="shortcut icon" href="../favicon.ico"/> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
            <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />

</head>
<body>
    <img src="Hinh/topad.jpg" height="200px" width="100%" />
    <form id="form1" runat="server">
    <div id="menu" style="font-size:18px; color:black;">
		    <ul>
		    <li><a href="Ad-bcdathang.aspx" target="b">Đơn Đặt Hàng</a></li>
		    <li><a href="Ad-chinhsuasp.aspx" target="b">Chỉnh Sửa Sản Phẩm</a></li>
		    <li><a href="Ad-dsnhanvien.aspx" target="b">Danh Sách Nhân Viên</a></li>          
            <li><a href="Ad-bcnhaphang.aspx" target="b">Danh Sách Nhập Hàng</a></li>
            </ul>
	    </div>
    </form>
</body>
</html>
