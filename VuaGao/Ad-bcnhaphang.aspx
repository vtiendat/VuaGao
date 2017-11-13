<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad-bcnhaphang.aspx.cs" Inherits="VuaGao.Ad_bcnhaphang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <style type="text/css">
        #form1 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div id="bg"><img width="100%" height="100%" src="Hinh/bgad.png" /></div> 
    <div>
        <asp:Label ID="Label1" runat="server" Text="Báo Cáo Nhập Kho" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="754px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="SOPHIEUNHAP" HeaderText="SỐ PHIẾU NHẬP" SortExpression="SOPHIEUNHAP" />
                <asp:BoundField DataField="MA_HH" HeaderText="MÃ HÀNG HÓA" SortExpression="MA_HH" />
                <asp:BoundField DataField="SOLUONG" HeaderText="SỐ LƯỢNG" SortExpression="SOLUONG" />
                <asp:BoundField DataField="DONGIA" HeaderText="ĐƠN GIÁ" SortExpression="DONGIA" />
                <asp:BoundField DataField="THANHTIEN" HeaderText="THÀNH TIỀN" SortExpression="THANHTIEN" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT [SOPHIEUNHAP], [MA_HH], [SOLUONG], [DONGIA], [THANHTIEN] FROM [PHIEUNHAPCT]"></asp:SqlDataSource>
        <br />
        
    </div>
    </form>
</body>
</html>
