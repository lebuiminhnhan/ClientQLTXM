﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.HomeSite
{
    public partial class HomePage : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
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
            // xe tay ga
            foreach (var i in sv.DanhSachTayGa())
            {
                litayga.Text = litayga.Text + "<div class='product-item men'>";
                litayga.Text = litayga.Text + @"<div class='product discount product_filter'>
                                                <div class='product_image'>
                       
								
									<img src = '../image/" + i.Link + @"' witdh='221' height='221'>
								</div>
								<div class='favorite favorite_left'></div>
								<div class='product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center'><span>-%" + i.MucGiamGia + @"</span></div>
								<div class='product_info'>
									<h5 class='product_name'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"'> " + i.Name + @"</a></h5>
									<div class='product_price'>" + (int)(i.GiaThue - (i.MucGiamGia * i.GiaThue) / 100) + @" VNĐ/ngày</br><span>" + i.GiaThue + @" VNĐ/ngày</span></div>
								</div>
							</div>
							<div class='red_button add_to_cart_button'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"' >Đặt Trước Ngay Hôm Nay</a></div>";

                litayga.Text = litayga.Text + "</div>";
            }

            // xe số
            foreach (var i in sv.DanhSachXeSo())
            {
                lixeso.Text = lixeso.Text + "<div class='product-item accessories'>";
                lixeso.Text = lixeso.Text + @"<div class='product discount product_filter'>
                                                <div class='product_image'>
                       
								
									<img src = '../image/" + i.Link + @"' witdh='221' height='221'>
								</div>
								<div class='favorite favorite_left'></div>
								<div class='product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center'><span>-%" + i.MucGiamGia + @"</span></div>
								<div class='product_info'>
									<h5 class='product_name'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"'> " + i.Name + @"</a></h5>
									<div class='product_price'>" + (int)(i.GiaThue - (i.MucGiamGia * i.GiaThue) / 100) + @" VNĐ/ngày</br><span>" + i.GiaThue + @" VNĐ/ngày</span></div>
								</div>
							</div>
							<div class='red_button add_to_cart_button'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"' >Đặt Trước Ngay Hôm Nay</a></div>";

                lixeso.Text = lixeso.Text + "</div>";
            }

            // xe côn tay
            foreach (var i in sv.DanhSachConTay())
            {
                licontay.Text = licontay.Text + "<div class='product-item women'>";
                licontay.Text = licontay.Text + @"<div class='product discount product_filter'>
                                                <div class='product_image'>
                       
								
									<img src = '../image/" + i.Link + @"' witdh='221' height='221'>
								</div>
								<div class='favorite favorite_left'></div>
								<div class='product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center'><span>-%" + i.MucGiamGia + @"</span></div>
								<div class='product_info'>
									<h5 class='product_name'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"'> " + i.Name + @"</a></h5>
									<div class='product_price'>" + (int)(i.GiaThue - (i.MucGiamGia * i.GiaThue) / 100) + @" VNĐ/ngày</br><span>" + i.GiaThue + @" VNĐ/ngày</span></div>
								</div>
							</div>
							<div class='red_button add_to_cart_button'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"' >Đặt Trước Ngay Hôm Nay</a></div>";

                licontay.Text = licontay.Text + "</div>";
            }


            // xe côn tay
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            var query = sv.TimKiem2(TextBox1.Text);
            if (query.Count() > 0)
            {
                liketqua.Text = "";
                foreach (var i in query.Take(3))
                {
                    liketqua.Text = liketqua.Text + "<div class='product-item women'>";
                    liketqua.Text = liketqua.Text + @"<div class='product discount product_filter'>
                                                <div class='product_image'>
                       
								
									<img src = '../image/" + i.Link + @"' witdh='221' height='221'>
								</div>
								<div class='favorite favorite_left'></div>
								<div class='product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center'><span>-%" + i.MucGiamGia + @"</span></div>
								<div class='product_info'>
									<h5 class='product_name'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"'> " + i.Name + @"</a></h5>
									<div class='product_price'>" + (int)(i.GiaThue - (i.MucGiamGia * i.GiaThue) / 100) + @" VNĐ/ngày</br><span>" + i.GiaThue + @" VNĐ/ngày</span></div>
								</div>
							</div>
							<div class='red_button add_to_cart_button'><a href = 'DetailPage.aspx?MaXe=" + i.MaXe + @"' >Đặt Trước Ngay Hôm Nay</a></div>";

                    liketqua.Text = liketqua.Text + "</div>";
                }

            }
            else
            {
                Response.Write("<script>alert('Không tìm thấy !')</script>");
            }
        }
    }
}