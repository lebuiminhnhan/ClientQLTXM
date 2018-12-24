using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class DatThue : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            

            if ((string)Session["role"] != "User" && (string)Session["role"] != null && (string)Session["role"] != "Block")
            {
              GridView1.DataSource = sv.DanhSachHopDongDatTruoc();
            GridView1.DataBind();  
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
            DateTime date = DateTime.Parse(TextBox5.Text);

           
                TextBox1.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
                TextBox2.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text);
                TextBox3.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
                TextBox4.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
           
        }

        protected void btnnhap_Click(object sender, EventArgs e)
        {
            sv.CapNhatTrangThaiXeTrong(TextBox1.Text);
            Response.Write("<script>alert('Xác nhận hoàn tất xe đã cập nhật lại!')</script>");

            GridView1.DataSource = sv.DanhSachHopDongDatTruoc();
            GridView1.DataBind();
        }
    }
}