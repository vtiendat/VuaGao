using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VuaGao
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btndangkydk0_Click(object sender, EventArgs e)
        {
            ConnectionDB dangnhap = new ConnectionDB();

            List<CDangNhap> ListTT = dangnhap.getAllTT(TextBox1.Text, TextBox2.Text);

            CDangNhap dn = new CDangNhap();
            if (ListTT.Count == 0)
            {
                lbtc.Text = "Sai Tài Khoản Hoặc Mật Khẩu";
                return;
            }
            dn = ListTT[0];
            if (TextBox1.Text == dn.Id && TextBox2.Text == dn.Pass)
            {
                WebMsgBox.Show("Đăng Nhập Thành Công!");
                Session["id"] = TextBox1.Text;
                Session["mk"] = TextBox2.Text;
                Session["ten"] = dn.Tenkh;
                
                Response.Redirect("TrangChu1.aspx");
            }
            else
            {
                lbtc.Text = "Sai Tài Khoản Hoặc Mật Khẩu";
            }
        }

        protected void btntrangchu_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }


    }
}