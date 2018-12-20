using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.HomeSite
{
    public partial class DetailPage : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel4.Visible = false;
            if (Session["role"] == null)
            {
                if ((string)Session["role"] == "User")
                {

                }
                Label2.Text = "Chào, khách vãng lai";
            }
            else
                 if ((string)Session["role"] == "Admin")
            {

                Label2.Text = "Chào, " + Session["role"] + " , " + Session["name"];
            }
            else
                     if ((string)Session["role"] == "User")
            {

                Label2.Text = "Chào! " + Session["role"] + " , " + Session["name"];
            }
            else
             if ((string)Session["role"] == "Staff")
            {

                Label2.Text = "Chào! Nhân viên " + Session["name"];

            }

            if (!IsPostBack)
            {
                foreach (var i in sv.ShowChiTiet(int.Parse(Request.QueryString["MaXe"])).Take(3).ToList())
                {
                    Literal1.Text = Literal1.Text + "<li><img src='../image/" + i.Link + @"' alt='' data-image='../image/" + i.Link + @"'></li>";



                }
                foreach (var i in sv.ShowChiTiet(int.Parse(Request.QueryString["MaXe"])).Take(1).ToList())
                {

                    Literal2.Text = Literal2.Text + "<div class='product_details'>";


                    Literal2.Text = Literal2.Text + @"<div class='product_details_title'>
							<h2>" + i.Name + @"</h2>
							
						</div>
						
						<div class='original_price'>Giá gốc: " + i.GiaThue + @"VNĐ/ngày</div>
						<div class='product_price'>Giá giảm: " + (int)(i.GiaThue - (i.MucGiam * i.GiaThue) / 100) + @" VNĐ/ngày</div>
			
					<div class='quantity d-flex flex-column flex-sm-row align-items-sm-center'>
						
						
					</div>";
                    Literal2.Text = Literal2.Text + "</div>";

                    Literal3.Text = Literal3.Text + "<h4>" + i.Mota + "</h4>";


                    Literal4.Text = Literal4.Text + "<h3> Biển kiểm soát: " + i.BangSo + @" </h3></br><h3> Hãng sản xuất: " + i.HangXe + @" </h3></br><h3> Loại Xe: " + i.LoaiXe + @" </h3>";

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Session["role"] == null)
            {

                Response.Write("<script>alert('bạn cần đăng nhập để đặt xe !')</script>");

            }
            else
                    if ((string)Session["role"] == "User")
                    {

                          Panel1.Visible = true;
                          Panel2.Visible = false;

                    }
        }

        protected void them_Click(object sender, EventArgs e)
        {
            sv.ThemDatXe(int.Parse(Request.QueryString["MaXe"]), DateTime.Now, txtten.Text, "Nam", Textnamsinh.Text, Textdiachi.Text, Textcmnd.Text, Textemail.Text, Textsdt.Text);
            Response.Write("<script>alert('Đặt thuê xe trước thành công !')</script>");
            Panel4.Visible = true;
            Panel3.Visible = false;
            Panel5.Visible = false;
            GridView1.DataSource = sv.DanhSachDat(int.Parse(Request.QueryString["MaXe"]));
            GridView1.DataBind();
            //Response.Redirect("~/HomeSite/HomePage.aspx");
        }
    }
}