using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class Hopdong : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load()
        {
            GridView1.DataSource = sv.DanhSachThue();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dropkhachhang.DataSource = sv.DanhSachKhachHang();
                dropkhachhang.DataTextField = "HoTen";
                dropkhachhang.DataValueField = "MaKH";
                dropkhachhang.DataBind();

                DropXe.DataSource = sv.DanhSachXe();
                DropXe.DataTextField = "BangSo";
                DropXe.DataValueField = "MaXe";
                DropXe.DataBind();

                Dropnhanvien.DataSource = sv.DanhSachNhanVien();
                Dropnhanvien.DataTextField = "HoTen";
                Dropnhanvien.DataValueField = "MaNV";
                Dropnhanvien.DataBind();
            }

            load();
        }

        protected void btnnhap_Click(object sender, EventArgs e)
        {
            if(DateTime.Parse(txtngaythue.Text).Month == DateTime.Parse(txtngaytra.Text).Month)
            {
                if (DateTime.Parse(txtngaythue.Text).Day < DateTime.Parse(txtngaytra.Text).Day)
                {
                    sv.ThemHopDongThue(int.Parse(DropXe.SelectedValue), int.Parse(dropkhachhang.SelectedValue), int.Parse(Dropnhanvien.SelectedValue), DateTime.Parse(txtngaythue.Text), DateTime.Parse(txtngaytra.Text));
                    Response.Write("<script>alert('Thêm thành công !')</script>");
                    load();
                }
                else
                {
                    Response.Write("<script>alert('Thêm thất bại, ngày trả không được trước ngày thuê !')</script>");
                }
            }
           
        }

        protected void btnLoc_Click(object sender, EventArgs e)
        {
            if (CheckTrangThai.SelectedValue == "Tất Cả")
            {
                load();
            }
            if (CheckTrangThai.SelectedValue == "Đã Thanh Toán")
            {
                GridView1.DataSource = sv.LocHopDongThue(CheckTrangThai.SelectedValue);
                GridView1.DataBind();
            }
            if (CheckTrangThai.SelectedValue == "Đang Thuê")
            {
                GridView1.DataSource = sv.LocHopDongThue(CheckTrangThai.SelectedValue);
                GridView1.DataBind();
            }
        }
    }
}