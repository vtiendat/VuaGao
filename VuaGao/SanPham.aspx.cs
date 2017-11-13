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
    public partial class SanPham : System.Web.UI.Page
    {
        DataSet1TableAdapters.HANGHOATableAdapter hh = new DataSet1TableAdapters.HANGHOATableAdapter();
        DataSet1TableAdapters.TIMKIEMTableAdapter tk = new DataSet1TableAdapters.TIMKIEMTableAdapter();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ten"] != null)
            {
                string ten = Session["ten"].ToString();
                hello.Text = "Xin Chào " + ten + "!";
            }
            else
            {
                hello.Text = " ";
                LinkButton1.Visible = false;
            }
           
            DataList1.DataSource = hh.GetData();
            DataList1.DataBind();
            
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = tk.GetData(txtTimKiem.Text);
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["ten"] = null;
            Response.Redirect("TrangChu.aspx");
        }


    }
}