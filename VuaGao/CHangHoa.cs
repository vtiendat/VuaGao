using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VuaGao
{
    public class CHangHoa
    {
        string ma_hh;

        public string Ma_hh
        {
            get { return ma_hh; }
            set { ma_hh = value; }
        }
        string ten_hh;

        public string Ten_hh
        {
            get { return ten_hh; }
            set { ten_hh = value; }
        }
        decimal dongia_hh;

        public decimal Dongia_hh
        {
            get { return dongia_hh; }
            set { dongia_hh = value; }
        }
        public CHangHoa() { }
        public CHangHoa(string ma_hh, string ten_hh, decimal dongia_hh) 
        {
            this.ten_hh = ten_hh;
            this.dongia_hh = dongia_hh;
            this.ma_hh = ma_hh;
        }
    }
}