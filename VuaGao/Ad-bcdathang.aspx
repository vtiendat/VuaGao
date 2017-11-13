<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad-bcdathang.aspx.cs" Inherits="VuaGao.Ad_bcdathang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đặt Hàng</title>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    </head>
<body>
    <form id="form1" runat="server">
        <div id="bg"><img width="100%" height="100%" src="Hinh/bgad.png" /></div> 

        <center>
    <asp:Label ID="Label1" runat="server" Text="Danh Sách Hóa Đơn Đặt Hàng" Font-Size="XX-Large"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SOHD" DataSourceID="SqlDataSource3" style="text-align: center" Width="949px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="SOHD" HeaderText="SỐ HD" ReadOnly="True" SortExpression="SOHD" />
                <asp:BoundField DataField="TEN_KH" HeaderText="TÊN KH" SortExpression="TEN_KH" />
                <asp:BoundField DataField="TEN_HH" HeaderText="TÊN HÀNG HÓA" SortExpression="TEN_HH" />
                <asp:BoundField DataField="MA_HH" HeaderText="MÃ HÀNG HÓA" SortExpression="MA_HH" />
                <asp:BoundField DataField="SOLUONG" HeaderText="SỐ LƯỢNG" SortExpression="SOLUONG" />
                <asp:BoundField DataField="DGIA" HeaderText="ĐƠN GIÁ" SortExpression="DGIA" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT * FROM [DATHANG]"></asp:SqlDataSource>
            </center>
    </form>
</body>
</html>
