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
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangkydk0_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }

        protected void btndangkydk_Click(object sender, EventArgs e)
        {
            try
            {
                string strcn;
                strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(strcn);
                SqlCommand cmd = new SqlCommand("INSERT INTO TAIKHOAN(id,pass,EMAIL,SoDienTHOAI,diachi,TENKH) VALUES('" + TextBox1.Text + "','"
                    + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',N'" + TextBox6.Text + "',N'" + TextBox7.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                thongbao.Text = "Đăng ký thành công";
            }
            catch
            {
                thongbao.Text = "Đăng ký thất bại";
            }
        }
    }
}