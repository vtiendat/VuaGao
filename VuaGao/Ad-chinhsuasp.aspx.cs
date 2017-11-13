using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace VuaGao
{
    public partial class Ad_chinhsuasp : System.Web.UI.Page
    {
        DataSet1TableAdapters.XOASP1TableAdapter xoa = new DataSet1TableAdapters.XOASP1TableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            lbDonGia.Visible = true;
            lbDonVitinh.Visible = true;
            lbMaHH.Visible = true;
            lbMaLoaiHang.Visible = true;
            lbTenHH.Visible = true;
            lbHinh.Visible = true;
            txtDonGia.Visible = true;
            txtDonViTinh.Visible = true;
            txtMaHH.Visible = true;
            txtTenHH.Visible = true;
            txtHinh.Visible = true;
            DropDownList1.Visible = true;
            btnxacnhan.Visible = true;
        }

        protected void btnxacnhan_Click(object sender, EventArgs e)
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcn);
            SqlCommand cmd = new SqlCommand("INSERT INTO HANGHOA(MA_HH,TEN_HH,DV_TINH,DONGIA,MA_LOAIHANG,HINH) VALUES('" + txtMaHH.Text + "',N'"
                + txtTenHH.Text + "','" + txtDonViTinh.Text + "','" + txtDonGia.Text + "','" + DropDownList1.Text + "','" + txtHinh.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            thongbao.Text = "THÊM HÀNG HÓA THÀNH CÔNG !";
            lbDonGia.Visible = false;
            lbDonVitinh.Visible = false;
            lbMaHH.Visible = false;
            lbMaLoaiHang.Visible = false;
            lbTenHH.Visible = false;
            lbHinh.Visible = false;
            txtDonGia.Visible = false;
            txtDonViTinh.Visible = false;
            txtMaHH.Visible = false;
            txtTenHH.Visible = false;
            txtHinh.Visible = false;
            DropDownList1.Visible = false;
            btnxacnhan.Visible = false;
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            lbChonsp.Visible = true;
            DropDownList2.Visible = true;
            btnxacnhanxoa.Visible = true;
        }


        protected void btnSua_Click(object sender, EventArgs e)
        {
            lbDonGia.Visible = true;
            lbDonVitinh.Visible = true;
            lbMaHH.Visible = true;
            lbMaLoaiHang.Visible = true;
            lbTenHH.Visible = true;
            lbHinh.Visible = true;
            txtDonGia.Visible = true;
            txtDonViTinh.Visible = true;
            txtMaHH.Visible = true;
            txtTenHH.Visible = true;
            txtHinh.Visible = true;
            DropDownList3.Visible = true;
            DropDownList1.Visible = true;
            btnxacnhansua.Visible = true;

        }

        protected void btnxacnhansua_Click(object sender, EventArgs e)
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcn);
            SqlCommand cmd = new SqlCommand("UPDATE HANGHOA SET MA_HH = '" + txtMaHH.Text + "', TEN_HH = N'" + txtTenHH.Text
+ "', DV_TINH =N'" + txtDonViTinh.Text + "', MA_LOAIHANG ='" + DropDownList1.Text + "', HINH ='"
+ txtHinh.Text + "' WHERE MA_HH = '" + DropDownList3.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            thongbao.Text = "SỬA HÀNG HÓA THÀNH CÔNG !";
            lbDonGia.Visible = false;
            lbDonVitinh.Visible = false;
            lbMaHH.Visible = false;
            lbMaLoaiHang.Visible = false;
            lbTenHH.Visible = false;
            lbHinh.Visible = false;
            txtDonGia.Visible = false;
            txtDonViTinh.Visible = false;
            txtMaHH.Visible = false;
            txtTenHH.Visible = false;
            txtHinh.Visible = false;
            DropDownList1.Visible = false;
            btnxacnhansua.Visible = true;
            DropDownList3.Visible = false;
        }

        protected void btnxacnhanxoa_Click1(object sender, EventArgs e)
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcn);
            SqlCommand cmd = new SqlCommand("DELETE FROM HANGHOA WHERE MA_HH='" + DropDownList2.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            thongbao.Text = "XÓA HÀNG HÓA THÀNH CÔNG !";
        }
    }
}