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
            string manv = sv.checkNV((string)Session["name"]);
            if ((string)Session["role"] != "User" && (string)Session["role"] != null && (string)Session["role"] != "Block")
            {
                if (!IsPostBack)
                {
                    dropkhachhang.DataSource = sv.DanhSachKhachHang();
                    dropkhachhang.DataTextField = "TenKH";
                    dropkhachhang.DataValueField = "MaKH";
                    dropkhachhang.DataBind();

                    DropXe.DataSource = sv.DanhSachXe();
                    DropXe.DataTextField = "BangSo";
                    DropXe.DataValueField = "MaXe";
                    DropXe.DataBind();
                    try
                    {
                        if ((string)Session["role"] == "Admin" )
                        {
                            Dropnhanvien.DataSource = sv.DanhSachNhanVien();
                        }
                        else
                        {
                            Dropnhanvien.DataSource = sv.DanhSachNhanVien().Where(x => x.MaNV == int.Parse(manv));
                        }
                    }
                    catch (Exception)
                    {
                        Label2.Text = "!";
                    }
                    Dropnhanvien.DataTextField = "HoTen";
                    Dropnhanvien.DataValueField = "MaNV";
                    Dropnhanvien.DataBind();
                }

                load();
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }
            
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
            if (CheckTrangThai.SelectedValue == "Đã hủy")
            {
                GridView1.DataSource = sv.LocHopDongThue(CheckTrangThai.SelectedValue);
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            sv.HuyHopDong(int.Parse(TextBox1.Text),TextBox2.Text);
            Response.Write("<script>alert('Hủy hoàn tất')</script>");
            load();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            TextBox2.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            Label1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
}