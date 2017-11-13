using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VuaGao
{
    public class CDangNhap
    {
        string id;

        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        string pass;

        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }
        string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        string sodienthoai;

        public string Sodienthoai
        {
            get { return sodienthoai; }
            set { sodienthoai = value; }
        }
        string diachi;

        public string Diachi
        {
            get { return diachi; }
            set { diachi = value; }
        }
        string tenkh;

        public string Tenkh
        {
            get { return tenkh; }
            set { tenkh = value; }
        }
        public CDangNhap() { }
        public CDangNhap(string id, string pass, string email, string sodienthoai, string diachi, string tenkh)
        {
            this.id = id;
            this.pass = pass;
            this.email = email;
            this.sodienthoai = sodienthoai;
            this.diachi = diachi;
            this.tenkh = tenkh;
        }
    }
    
}