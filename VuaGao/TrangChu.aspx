<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="VuaGao.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Chủ</title>
    <link rel="stylesheet" type="text/css" href="css/menu.css" />
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />
		<noscript>
			<link rel="stylesheet" type="text/css" href="css/noscript.css" />
		</noscript>

</head>
<body>  
    <form id="form1" runat="server">
        <div id="front" style="font-size:18px; color:black;">
            <a href="DangNhap.aspx" target="b">Đăng Nhập</a>
        </div>
        <div id="front1" style="font-size:18px; color:black;">
            <a href="dangky.aspx" target="b">Đăng Ký</a>
        </div>
        
        <img src="Hinh/top.jpg" height="200px" width="100%" /> 
        <div id="menu" style="font-size:18px; color:black;">
		<ul>
		<li><a href="TrangChu.aspx" target="b">Trang Chủ</a></li>
		<li><a href="SanPham.aspx" target="b">Sản Phẩm</a></li>
		<li><a href="KhuyenMai.aspx" target="b">Khuyến Mãi</a></li>
        <li><a href="TuyenDung.aspx" target="b">Tuyển Dụng</a></li>
        </ul>
	</div>
    <%-- wallap --%>
        <div id="wallap">
        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/jssor.slider-21.1.6.mini.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{ b: -1, d: 1, o: -1 }, { b: 0, d: 1000, o: 1 }],
              [{ b: 1900, d: 2000, x: -379, e: { x: 7 } }],
              [{ b: 1900, d: 2000, x: -379, e: { x: 7 } }],
              [{ b: -1, d: 1, o: -1, r: 288, sX: 9, sY: 9 }, { b: 1000, d: 900, x: -1400, y: -660, o: 1, r: -288, sX: -9, sY: -9, e: { r: 6 } }, { b: 1900, d: 1600, x: -200, o: -1, e: { x: 16 } }]
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideDuration: 800,
                $SlideEasing: $Jease$.$OutQuint,
                $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlideo$,
                    $Transitions: jssor_1_SlideoTransitions
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        .jssora22l.jssora22lds      (disabled)
        .jssora22r.jssora22rds      (disabled)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('img/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
        .jssora22l.jssora22lds { background-position: -10px -31px; opacity: .3; pointer-events: none; }
        .jssora22r.jssora22rds { background-position: -70px -31px; opacity: .3; pointer-events: none; }
    </style>

    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 350px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 350px; overflow: hidden;">
            <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
            <%-- Ins Pic --%>
            <div data-p="225.00">
                <img data-u="image" src="Hinh/wall/khaitruong.jpg" />
                
            </div>
            <div data-p="225.00" style="display: none;">
                <img data-u="image" src="Hinh/wall/khuyenmai1.jpg" />
            </div>
            <div data-p="225.00" data-po="80% 55%" style="display: none;">
                <img data-u="image" src="Hinh/wall/KM.jpg" />
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:8px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:8px;width:40px;height:58px;" data-autocenter="2"></span>
         </div>
 </div>

        <%-- San Pham Ban Chay --%>
        
        <div style="position:absolute; top:625px; width:100%;">
            <h1 style="font-size:20px;  color:black; font-weight:bold;  background:#b6ff00; height:15px;" >Sản Phẩm Bán Chạy</h1>
           <marquee scrollamount="10">
            <asp:DataList ID="DataList1" RepeatColumns="5" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="147px" Width="176px" ImageUrl='<%# Eval("HINH") %>' />
                    <br />
                   <center> <asp:Label ID="Label1" runat="server" style="text-align: center; font-size:20px;" Text='<%# Eval("TEN_HH") %>'></asp:Label></center>
                </ItemTemplate>
            </asp:DataList>
            </marquee>
            </div>
            <%-- Tin tuc --%>
         <div style="position:absolute; top:900px; width:100%;">
            <h1 style="font-size:20px;  color:black; font-weight:bold;  background:#b6ff00; height:15px;" >Tin Tức - Thị Trường</h1>
             <div id="tin1" style="float:left; width:49%; height:auto;">
                <img src="Hinh/Tintuc/tintuc.jpg" style="height:200px; width:300px; float:left;"  />
                 <a href="http://www.tintucnongnghiep.com/2016/10/campuchia-no-luc-xuat-khau-gao.html" style="font-size:30px; font-weight:bold;">Campuchia nỗ lực xuất khẩu gạo</a>
                 <p style="font-size:15px;"">Bộ NN-PTNT cho biết: Trong những ngày cuối tháng 10 , thị trường lúa gạo nội địa có dấu hiệu cải t...</p>
                 </div>
             <div id="tin2" style="float:right; width:49%; height:auto;">
                <img src="Hinh/Tintuc/tin2.jpg" style="height:200px; width:300px; float:left;"  />
                 <a href="http://www.tintucnongnghiep.com/2016/10/trung-quoc-giam-mua-hon-400000-tan-gao.html" style="font-size:30px; font-weight:bold;">Trung Quốc giảm mua hơn 400.000 tấn gạo Việt</a>
                 <p style="font-size:15px;"">Trung Quốc vẫn ở thứ nhất về thị trường xuất khẩu gạo của Việt Nam nhưng so với cùng kỳ 2015 , nướ... </p>
                 </div>
             <br />

             <div id="tin3" style="float:right; width:49%; height:auto; top:3px;">
                <img src="Hinh/Tintuc/tin3.jpg" style="height:200px; width:300px; float:left;"  />
                 <a href="http://www.tintucnongnghiep.com/2016/10/xuat-khau-gao-nam-2016-kho-at-54-trieu.html" style="font-size:30px; font-weight:bold;">Xuất khẩu gạo năm 2016 khó đạt 5,4 triệu tấn</a>
                 <p style="font-size:15px;"">Thị trường xuất khẩu khó khăn cho nên mục tiêu xuất khẩu đã điều chỉnh giảm xuống 5,4 triệu tấn n... </p>
                 </div>
        <div id="tin4" style="float:left; width:49%; height:auto; top:3px;">
                <img src="Hinh/Tintuc/tin4.jpg" style="height:200px; width:300px; float:left;"  />
                 <a href="http://www.tintucnongnghiep.com/2016/09/xuat-khau-gao-ky-vong-vao-thi-truong.html" style="font-size:30px; font-weight:bold;">Xuất khẩu gạo, kỳ vọng vào thị trường châu Phi</a>
                 <p style="font-size:15px;"">Xuất khẩu gạo sang thị trường Trung Quốc đang có dấu hiệu giảm, vì thế Hiệp hội lương thực Việt Na...  </p>
                 </div>
             </div>

     <%-- Footer --%>
                <div id="footer" style="font-size:20px; position:absolute; bottom:-900px; left:0; width:100%;">
            <center>
            <p>CÔNG TY TNHH MTV TIẾN ĐẠT <br /> Địa Chỉ: 111/13, Thích Quảng Đức, Phường Phú Cường, Thành Phố Thủ Dầu Một,Tỉnh Bình Dương<br />
            <p>Điện thoại: 093.3937.541</p>
            <p>Email: <a style="color:red;" href="mailto:tiendat4296@gmail.com">tiendat4296@gmail.com</a></p>
            </center>
               </div>
        </form>
</body>
</html>
