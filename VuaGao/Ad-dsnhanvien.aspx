<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad-dsnhanvien.aspx.cs" Inherits="VuaGao.Ad_dsnhanvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nhân Viên</title>
    <link rel="stylesheet" type="text/css" href="css/position.css" />
    <style type="text/css">
        .auto-style1 {
            width: 107%;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            height: 26px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="bg"><img width="100%" height="100%" src="Hinh/bgad.png" /></div> 
    <div style="width: 814px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Danh Sách Nhân Viên" ForeColor="Black" Font-Size="X-Large" style="text-align: left"></asp:Label>
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MA_NV" DataSourceID="SqlDataSource1" Width="813px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CHUCVU" HeaderText="CHỨC VỤ" SortExpression="CHUCVU" />
                <asp:BoundField DataField="MA_NV" HeaderText="MÃ NV" ReadOnly="True" SortExpression="MA_NV" />
                <asp:BoundField DataField="TEN_NV" HeaderText="TÊN NV" SortExpression="TEN_NV" />
                <asp:BoundField DataField="DIACHI" HeaderText="ĐỊA CHỈ" SortExpression="DIACHI" />
                <asp:BoundField DataField="DIENTHOAI" HeaderText="ĐIỆN THOẠI" SortExpression="DIENTHOAI" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="NGAYSINH" HeaderText="NGÀY SINH" SortExpression="NGAYSINH" />
                <asp:BoundField DataField="LUONG" HeaderText="LƯƠNG" SortExpression="LUONG" />
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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBANGAOConnectionString %>" SelectCommand="SELECT * FROM [NHANVIEN]"></asp:SqlDataSource>

        
    </div>
        <asp:Label ID="Label9" runat="server" Font-Size="Larger" Text="Thêm Nhân Viên"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style12">
            <tr>
                <td class="auto-style14">CHỨC VỤ</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">MÃ NV</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">TÊN NV</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">ĐỊA CHỈ</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">ĐIỆN THOẠI</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">EMAIL</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">NGÀY SINH</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">LƯƠNG</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" Text="Xác Nhận Thêm" />
                    <br />
                    <asp:Label ID="Label10" runat="server" style="text-align: right"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label11" runat="server" Font-Size="Larger" Text="Xóa Nhân Viên"></asp:Label>
        <br />
        <table class="auto-style12">
            <tr>
                <td style="text-align: right">MÃ NHÂN VIÊN</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="Button2_Click" Text="Xác Nhận Xóa" />
                    <br />
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
