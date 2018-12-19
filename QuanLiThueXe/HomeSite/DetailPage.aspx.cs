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
           
            foreach (var i in sv.ShowChiTiet(int.Parse(Request.QueryString["MaXe"])).Take(3).ToList())
            {
                Literal1.Text = Literal1.Text+ "<li><img src='../image/"+i.Link+ @"' alt='' data-image='../image/"+i.Link+ @"'></li>";

               

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
						
						<div class='red_button add_to_cart_button' data-toggle='modal' data-target='#exampleModal'><a href = '#' > Đặt trước</a></div>
						
					</div>";
                Literal2.Text = Literal2.Text + "</div>";

                Literal3.Text = Literal3.Text + "<h4>" + i.Mota + "</h4>";


               Literal4.Text = Literal4.Text + "<h3> Biển kiểm soát: " + i.BangSo + @" </h3></br><h3> Hãng sản xuất: " + i.HangXe + @" </h3></br><h3> Loại Xe: " + i.LoaiXe + @" </h3>";

            }

        }
    }
}