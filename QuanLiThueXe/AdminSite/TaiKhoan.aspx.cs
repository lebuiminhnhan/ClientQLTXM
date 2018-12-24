using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class TaiKhoan : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load()
        {
            GridView1.DataSource = sv.DanhSachTK();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if ((string)Session["role"] == "Admin")
            {
                if (!IsPostBack)
                {
                    
                    Dropnhanvien.DataSource = sv.DanhSachNhanVien();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            sv.KhoaTK(TextBox1.Text);
            Response.Write("<script>alert('Khóa thành công !')</script>");
            load();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void them_Click(object sender, EventArgs e)
        {
            sv.ThemTK(txtten.Text, Textemail.Text, Textpass.Text,int.Parse(Dropnhanvien.SelectedValue));
            Response.Write("<script>alert('Thêm thành công !')</script>");
            load();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            txtten.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            Label1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
    }
}