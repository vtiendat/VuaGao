using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace VuaGao
{
    public class ConnectionDB
    {
        private SqlCommand cmd;
        private SqlConnection cnn;
        public ConnectionDB()
        {
            string strcn;
            strcn = ConfigurationManager.ConnectionStrings["QLBANGAOConnectionString"].ConnectionString.ToString();
            this.cnn = new SqlConnection(strcn);
            this.cmd = new SqlCommand();
            this.cmd.Connection = cnn;
        }
        public List<CDangNhap> getAllTT(string idm, string passm)
        {
            List<CDangNhap> listTT = new List<CDangNhap>();
            this.cmd.CommandText = "select id,pass,tenkh,email,diachi,sodienthoai from taikhoan where id='" + idm + "' and pass='" + passm + "'";
            this.cnn.Open();
            SqlDataReader rd = this.cmd.ExecuteReader();
            while (rd.Read())
            {
                CDangNhap dn = new CDangNhap();
                dn.Id = rd.GetString(0);
                dn.Pass = rd.GetString(1);
                dn.Tenkh = rd.GetString(2);
                dn.Email = rd.GetString(3);
                dn.Diachi = rd.GetString(4);
                dn.Sodienthoai = rd.GetString(5);
                listTT.Add(dn);
            }
            cnn.Close();
            return listTT;
        }
        public List<CHangHoa> LayTTHH(string tenhh)
        {
            List<CHangHoa> THONGTIN = new List<CHangHoa>();
            this.cmd.CommandText = "SELECT TEN_HH, DONGIA, MA_HH FROM HANGHOA WHERE TEN_HH = N'"+tenhh+"'";
            this.cnn.Open();
            SqlDataReader rd = this.cmd.ExecuteReader();
            while (rd.Read())
            {
                CHangHoa hh = new CHangHoa();
                hh.Ten_hh = rd.GetString(0);
                hh.Dongia_hh = rd.GetDecimal(1);
                hh.Ma_hh = rd.GetString(2);
                THONGTIN.Add(hh);
            }
            cnn.Close();
            return THONGTIN;
        }
    }
}