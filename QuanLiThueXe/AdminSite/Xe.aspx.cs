using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class Xe : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load()
        {
            GridView1.DataSource = sv.DanhSachKhoXe();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            if(!IsPostBack)
            {
                DropLX.DataSource = sv.DanhSachLoaiXe();
                DropLX.DataTextField = "TenLoai";
                DropLX.DataValueField = "MaLoai";
                DropLX.DataBind();

                DropNcc.DataSource = sv.DanhSachHangXe();
                DropNcc.DataTextField = "TenNCC";
                DropNcc.DataValueField = "MaNCC";
                DropNcc.DataBind();

            }
        }

        protected void btnnhap_Click(object sender, EventArgs e)
        {
            sv.ThemChiTietXe(txttenxe.Text, txtbangso.Text, int.Parse(txtmucgiam.Text), int.Parse(txtgiathue.Text),int.Parse(DropLX.SelectedValue),int.Parse(DropNcc.SelectedValue), txtmau.Text);
            Response.Write("<script>alert('Thêm thành công !')</script>");
            load();
        }
    }
}