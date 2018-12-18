using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load1()
        {
            GridView1.DataSource = sv.DanhSachThueChuaThanhToan();
            GridView1.DataBind();
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            load1();
            GridView2.Visible = false;
        }

       

       

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int id = Convert.ToInt32(this.GridView1.DataKeys[e.NewSelectedIndex].Values[0]);
            GridView1.Visible = false;
            GridView2.DataSource = sv.ThanhToanTien(id);
            GridView2.DataBind();
            GridView2.Visible = true;
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int sddt = Convert.ToInt32(this.GridView2.DataKeys[e.NewSelectedIndex].Values[0]);
            GridView1.Visible = true;
            sv.CapNhatHopDong(sddt);
            load1();
            Response.Write("<script>alert('Thanh toán thủ tục hoàn tất, xe đã được cập nhật lại !')</script>");
            GridView2.Visible = false;
        }
    }
}