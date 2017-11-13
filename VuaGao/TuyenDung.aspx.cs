using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VuaGao
{
    public partial class TuyenDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx");
        }
    }
}