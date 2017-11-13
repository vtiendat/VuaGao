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
    public partial class DatHang : System.Web.UI.Page
    {
        
        int sl, dg;
        string mahh;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ten"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            ConnectionDB dangnhap = new ConnectionDB();
            List<CDangNhap> ListTT = dangnhap.getAllTT(Session["id"].ToString(), Session["mk"].ToString());
            CDangNhap dn = new CDangNhap();
            dn = ListTT[0];
            lbTenKH.Text = dn.Tenkh;
            lbDiaChi.Text = dn.Diachi;
            lbSdt.Text = dn.Sodienthoai;
            
            
            List<CHangHoa> THONGTIN = dangnhap.LayTTHH(DropDownList1.Text);
            CHangHoa hh = new CHangHoa();
            hh = THONGTIN[0];
            lbDonGia.Text = (hh.Dongia_hh).ToString();
            sl = Int32.Parse(txtSoLuong.Text);
            dg = Int32.Parse(lbDonGia.Text);
            mahh = hh.Ma_hh;

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (sl < 0)
            {
                thongbao.Text = "Số lượng phải lớn hơn 0";
            }
            else
            {
                lbThanhTien.Text = (sl * dg).ToString();
            }
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            if (sl < 0)
            {
                thongbao.Text = "Số lượng phải lớn hơn 0";
            }
            else
            {
                Application.Add("HoaDon", 90);
                Application.Contents["HoaDon"] = (Int32)Application.Contents["Hoadon"] + 1;
                Guid g;
                g = Guid.NewGuid();

                string sohd = "HD" + g.ToString();
                string strcn;
                strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(strcn);
                SqlCommand cmd = new SqlCommand("INSERT INTO DATHANG(TEN_KH, SOHD,TEN_HH,MA_HH,SOLUONG,DGIA,THANHTIEN) VALUES('" + lbTenKH.Text + "',N'" + sohd + "',N'"
                    + DropDownList1.Text + "','" + mahh + "','" + sl + "','" + dg + "','" + lbThanhTien.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                thongbao.Text = "ĐẶT HÀNG THÀNH CÔNG !";
            }
            

            
        }

        protected void lbThanhTien_TextChanged(object sender, EventArgs e)
        {
            
            
        }
    }
}