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
            if ((string)Session["role"] == "Admin")
            {
                btncapnhat.Visible = false;
                load();
                Panel1.Visible = false;
                if (!IsPostBack)
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
            else
            {
                Response.Redirect("~/403page.aspx");
            }
            
        }

        protected void btnnhap_Click(object sender, EventArgs e)
        {
            sv.ThemChiTietXe(txttenxe.Text, txtbangso.Text, int.Parse(txtmucgiam.Text), int.Parse(txtgiathue.Text),int.Parse(DropLX.SelectedValue),int.Parse(DropNcc.SelectedValue), txtmau.Text,TextBox1.Text);
            Response.Write("<script>alert('Thêm thành công !')</script>");
            load();
        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            btncapnhat.Visible = false;
            btnnhap.Visible = true;
            sv.XeChiTietXe(int.Parse(TextBox2.Text), txttenxe.Text, txtbangso.Text, int.Parse(txtmucgiam.Text), int.Parse(txtgiathue.Text), int.Parse(DropLX.SelectedValue), int.Parse(DropNcc.SelectedValue), txtmau.Text, DropDownList1.SelectedValue);
             Response.Write("<script>alert('Sửa thành công !')</script>");
            Panel2.Visible = true;
            Panel1.Visible = false;
            load();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(GridView1.SelectedRow.Cells[9].Text=="Trống" || GridView1.SelectedRow.Cells[9].Text == "Bảo trì")
            {
                DropDownList1.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[9].Text);
               // DropLX.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
               // DropNcc.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
                txtbangso.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[7].Text);
                txtgiathue.Text= HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text);
                txtmau.Text= HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[8].Text);
                txtmucgiam.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text);
                txttenxe.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
                TextBox2.Text= HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
                
                btnnhap.Visible = false;
                btncapnhat.Visible = true;
                Panel2.Visible = false;
                Panel1.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Xe đang ở trạng thái không thể sửa!')</script>");
            }
        }
    }
}