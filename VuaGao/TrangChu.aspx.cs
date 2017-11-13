using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VuaGao
{
    public partial class TrangChu : System.Web.UI.Page
    {
        DataSet1TableAdapters.TOP5TableAdapter top5 = new DataSet1TableAdapters.TOP5TableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ten"] != null)
                Response.Redirect("TrangChu1.aspx");
            DataList1.DataSource = top5.GetData();
            DataList1.DataBind();
        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangky.aspx");
        }
    }
}