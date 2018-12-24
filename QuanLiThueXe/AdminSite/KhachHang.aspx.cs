using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class KhachHang : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        public void load()
        {
            GridView1.DataSource = sv.DanhSachKH();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "User" && (string)Session["role"] != null && (string)Session["role"] != "Block")
            {
                load();
                Panel2.Visible = false;
                Button4.Visible = false;
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }
           
        }

        protected void them_Click(object sender, EventArgs e)
        {
            string gt = "Nam";
            if(CheckBox1.Checked == true)
            {
                gt = "Nam";
            }
            if (CheckBox2.Checked == true)
            {
                gt = "Nữ";
            }
            sv.ThemKhachHang(txtten.Text, gt , Textnamsinh.Text, Textdiachi.Text, Textcmnd.Text, Textemail.Text, Textsdt.Text);
            Response.Write("<script>alert('Thêm thành công !')</script>");
            load();
            txtten.Text = String.Empty;
            Textcmnd.Text = String.Empty;
            Textdiachi.Text = String.Empty;
            Textemail.Text = String.Empty;
            Textnamsinh.Text = String.Empty;
            Textsdt.Text = String.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gt = "Nam";
            if (CheckBox1.Checked == true)
            {
                gt = "Nam";
            }
            if (CheckBox2.Checked == true)
            {
                gt = "Nữ";
            }
            sv.SuaKH(int.Parse(TextBox1.Text),txtten.Text, gt, Textnamsinh.Text, Textdiachi.Text, Textcmnd.Text, Textemail.Text, Textsdt.Text);
            Response.Write("<script>alert('Sửa thành công !')</script>");
            load();
            txtten.Text = String.Empty;
            Textcmnd.Text = String.Empty;
            Textdiachi.Text = String.Empty;
            Textemail.Text = String.Empty;
            Textnamsinh.Text = String.Empty;
            Textsdt.Text = String.Empty;
            Button1.Visible = false;
            them.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button4.Visible = true;
            Button1.Visible = true;
            them.Visible = false;
            TextBox1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
           txtten.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
          
            Textnamsinh.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text);
            Textcmnd.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
            Textdiachi.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
            Textemail.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[7].Text);
            Textsdt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[8].Text);
           
            Label1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sv.XoaKH(int.Parse(TextBox1.Text));
            load();
            Panel1.Visible = true;
            Panel2.Visible = false;
            Response.Write("<script>alert('Xóa thành công !')</script>");
            load();
            txtten.Text = String.Empty;
            Textcmnd.Text = String.Empty;
            Textdiachi.Text = String.Empty;
            Textemail.Text = String.Empty;
            Textnamsinh.Text = String.Empty;
            Textsdt.Text = String.Empty;
            Button1.Visible = false;
            them.Visible = true;
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
    }
}