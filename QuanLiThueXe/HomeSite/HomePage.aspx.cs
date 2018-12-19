using System;
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
            foreach(var i in sv.ShowTayga())
            {
                litayga.Text = litayga.Text + "<div class='product-item men'>";
                litayga.Text = litayga.Text +@"<div class='product discount product_filter'>
                                                <div class='product_image'>
                       
								
									<img src = '../image/"+i.Link+@"'>
								</div>
								<div class='favorite favorite_left'></div>
								<div class='product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center'><span>-%"+i.MucGiam+@"</span></div>
								<div class='product_info'>
									<h6 class='product_name'><a href = 'single.html'> "+i.Name+@"</a></h6>
									<div class='product_price'>"+(int)(i.GiaThue - (i.MucGiam*i.GiaThue)/100)+@" VNĐ/ngày</br><span>"+i.GiaThue+ @" VNĐ/ngày</span></div>
								</div>
							</div>
							<div class='red_button add_to_cart_button'><a href = '#' >Đặt Trước Ngay Hôm Nay</a></div>";

                          litayga.Text = litayga.Text + "</div>";
    }
        }
    }
}