<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="QuanLiThueXe.HomeSite.HomePage" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Thuê Xe VIVU</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Thuê Xe VIVU">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="Content/styles/bootstrap4/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="Content/styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="Content/styles/responsive.css">
</head>

<body>
    <form id="form1" runat="server">
        <div class="super_container">

		<!-- Header -->

		<header class="header trans_300">

			<!-- Top Navigation -->

			<div class="top_nav">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="top_nav_left"><asp:Label ID="Label2" runat="server"></asp:Label></div>
						</div>
						<div class="col-md-6 text-right">
							<div class="top_nav_right">
								<ul class="top_nav_menu">

									<!-- Currency / Language / My Account -->


									<li class="account">
										<a href="#">
											My Account
											<i class="fa fa-angle-down"></i>
										</a>
										<ul class="account_selection">
											<li><a runat="server" href="~/LoginSite/LoginPage.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
											<li><a runat="server" href="~/LoginSite/RegisterPage.aspx"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main Navigation -->

			<div class="main_nav_container">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-right">
							<div class="logo_container">
								<a runat="server" href="HomePage.aspx">Thuê Xe Máy <span> VIVU</span></a>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="#">trang chủ</a></li>
									<li><a href="contact.html">contact</a></li>
								</ul>
							
								<div class="hamburger_container">
									<i class="fa fa-bars" aria-hidden="true"></i>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>

		</header>

		<div class="fs_menu_overlay"></div>
		<div class="hamburger_menu">
			<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children">
						<a href="#">
							My Account
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="menu_selection">
							<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
							<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
						</ul>
					</li>
					<li class="menu_item"><a runat="server" href="HomePage.aspx">trang chủ</a></li>
					<li class="menu_item"><a runat="server" href="contact.html">Liên hệ</a></li>
				</ul>
			</div>
		</div>

		<!-- Slider -->

		<div class="main_slider" >
			<div class="owl-carousel owl-theme">
				<div class="item"><img src="Content/images/thuexe1.jpg" alt=""></div>
				<div class="item"><img src="Content/images/thuexe2.jpg" alt=""></div>
                <div class="item"><img src="Content/images/thue3.jpg" alt=""></div>
			</div>
		</div>

		<!-- Banner -->

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
						<h4>Bạn muốn tìm xe nào để thuê?</h4>
						<p>Mọi thứ thật dễ dàng với 1 cú click!</p>
					</div>
				</div>
				<div class="col-lg-6">
					
						<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
                            <asp:TextBox ID="TextBox1" runat="server" Height="46px" ></asp:TextBox>
                            <asp:Button ID="Button1" CssClass="newsletter_submit_btn trans_300" runat="server" OnClick="Button1_Click" Text="Tìm" />
							
						</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- New Arrivals -->

	<div class="new_arrivals">
        <asp:Panel ID="Panel1" runat="server">
            	<div class="container">
			<div class="row">
				<div class="col ">
					<div class="section_title new_arrivals_title">
						<h3>Danh sách xe máy</h3>
					</div>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col">
					<div class="new_arrivals_sorting">
						<ul class="arrivals_grid_sorting clearfix button-group filters-button-group">
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">all</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".women">Xe côn tay </li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".accessories">Xe số</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".men">Xe tay ga</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

						<!-- Product 1 -->
                        <asp:Literal ID="litayga" runat="server"></asp:Literal>
                        <asp:Literal ID="lixeso" runat="server"></asp:Literal>
                        <asp:Literal ID="licontay" runat="server"></asp:Literal>
						
					</div>
				</div>
			</div>
		</div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            	<div class="container">
			<div class="row">
				<div class="col ">
					<div class="section_title new_arrivals_title">
						<h3>Kết quả tìm:</h3>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

						<!-- Product 1 -->
                        <asp:Literal ID="liketqua" runat="server"></asp:Literal>
                       
						</div>
					</div>
		
			</div>
		</div>
        </asp:Panel>
	</div>

	

	<!-- Best Sellers -->

	

	<!-- Benefit -->

	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-shield-alt"></i></div>
						<div class="benefit_content">
							<h6>đảm bảo chất lượng</h6>
							<p>Xe cho thuê luôn được bảo trì và đảm bảo chất lượng tốt nhất phục vụ những cung đường dài</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fas fa-money-bill" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Thanh toán trực tiếp</h6>
							<p>Thanh toán trực tiếp bằng tiền mặt tại quầy đảm bảo độ tin cậy cho người thuê xe, kiểm tra xe tại chổ.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fas fa-life-ring"></i></div>
						<div class="benefit_content">
							<h6>Hỗ trợ nhanh</h6>
							<p>Đội ngũ hỗ trợ khi có vấn đề kỹ thuật, đội ngũ chấp vá xe lưu động đảm bảo chuyến hành trình không còn là nổi sợ</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fas fa-clock"></i></div>
						<div class="benefit_content">
							<h6>Mở cửa 24/24</h6>
							<p>Mở cửa liên tục 24/24 phục vụ ngày đêm, thời gian không còn là trở ngại, thuận tiện tuyệt đối, đến là có xe</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Blogs -->

	

	

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav">
							<li><a href="#">Blog</a></li>
							<li><a href="#">FAQs</a></li>
							<li><a href="contact.html">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><a href="#"><i class="fab fa-facebook-f"aria-hidden="true" ></i></a></li>
							<li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fab fa-skype" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container">
						<div class="cr">©2018 Thuê Xe Máy VIVU </div>
                       
						 Tổng số: 
<asp:Label ID="Label1" runat="server" Text=""><%= Application["Access"].ToString()%></asp:Label> lượt truy cập
						<br />
                          
                Đang Online: 
<asp:Label ID="lblCount" runat="server" Text=""><%= Application["Online"].ToString()%></asp:Label> đang online
   
					</div>
				</div>
			</div>
		</div>
	</footer>

</div>
    </form>
	

<script src="Content/js/jquery-3.2.1.min.js"></script>
<script src="Content/styles/bootstrap4/popper.js"></script>
<script src="Content/styles/bootstrap4/bootstrap.min.js"></script>
<script src="Content/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="Content/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="Content/plugins/easing/easing.js"></script>
<script src="Content/js/custom.js"></script>
</body>

</html>
