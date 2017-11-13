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
    public partial class ThongTinTaiKhoan : System.Web.UI.Page
    {
        string mk;
        protected void Page_Load(object sender, EventArgs e)
        {

                ConnectionDB dangnhap = new ConnectionDB();
                List<CDangNhap> ListTT = dangnhap.getAllTT(Session["id"].ToString(), Session["mk"].ToString());
                CDangNhap dn = new CDangNhap();
                dn = ListTT[0];
                mk = dn.Pass;
                lbTenTK.Text = dn.Id;
                lbTenND.Text = dn.Tenkh;
                lbEmail.Text = dn.Email;
                lbSoDT.Text = dn.Sodienthoai;
                lbDiachi.Text = dn.Diachi;

        }

        protected void btncapnhap_Click(object sender, EventArgs e)
        {
            if (txtMKcu.Text == mk)
            {
                string strcn;
                strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(strcn);
                SqlCommand cmd = new SqlCommand("UPDATE TAIKHOAN SET PASS = '" + txtMKmoi.Text + "', DIACHI = N'" + txtDiachi.Text
    + "', EMAIL =N'" + txtmail.Text + "' WHERE ID='" + lbTenTK.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                thongbao.Text = "CẬP NHẬP TÀI KHOẢN THÀNH CÔNG !";
                Session["ten"] = null;
                Response.Redirect("DangNhap.aspx");
            }
        }

        protected void lbtnDoiTT_Click(object sender, EventArgs e)
        {
            lbMKcu.Visible = true;
            lbMKmoi.Visible = true;
            lbmail.Visible = true;
            lbDC.Visible = true;
            txtDiachi.Visible = true;
            txtMKcu.Visible = true;
            txtMKmoi.Visible = true;
            txtmail.Visible = true;
            thongbao.Visible = true;
            btncapnhap.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}