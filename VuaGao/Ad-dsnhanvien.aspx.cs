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
    public partial class Ad_dsnhanvien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcn);
            SqlCommand cmd = new SqlCommand("INSERT INTO NHANVIEN(CHUCVU,MA_NV,TEN_NV,DIACHI,DIENTHOAI,EMAIL,NGAYSINH,LUONG) VALUES(N'" + TextBox1.Text + "',N'"
                + TextBox2.Text + "',N'" + TextBox3.Text + "',N'" + TextBox4.Text + "',N'" + TextBox5.Text + "',N'" + TextBox6.Text +  "','" + TextBox7.Text +  "','" + TextBox8.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label10.Text = "THÊM NHÂN VIÊN THÀNH CÔNG !";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcn);
            SqlCommand cmd = new SqlCommand("DELETE FROM NHANVIEN WHERE MA_NV='" + TextBox9.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label12.Text = "XÓA NHÂN VIÊN THÀNH CÔNG !";
        }
    }
}