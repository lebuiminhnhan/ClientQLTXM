<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailPage.aspx.cs" Inherits="QuanLiThueXe.HomeSite.DetailPage" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Single Product</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Thuê xe VIVU">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="Content/styles/bootstrap4/bootstrap.min.css">
	<link href="Content/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" href="Content/plugins/themify-icons/themify-icons.css">
	<link rel="stylesheet" type="text/css" href="Content/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="Content/styles/single_styles.css">
	<link rel="stylesheet" type="text/css" href="Content/styles/single_responsive.css">
    	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

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
							<div class="top_nav_left">free shipping on all u.s orders over $50</div>
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
											<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
											<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
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
								<a href="#">Thuê Xe Máy <span> VIVU</span></a>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="index.html">trang chủ</a></li>
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

		<!-- Hamburger Menu -->

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
					<li class="menu_item"><a href="#">trang chủ</a></li>

					<li class="menu_item"><a href="#">contact</a></li>
				</ul>
			</div>
		</div>

		<div class="container single_product_container">
			<div class="row">
				<div class="col">

					<!-- Breadcrumbs -->

					<div class="breadcrumbs d-flex flex-row align-items-center">
						
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-lg-7">
					<div class="single_product_pics">
						<div class="row">
							<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
								<div class="single_product_thumbnails">
									<ul>
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
										
									</ul>
								</div>
							</div>
							<div class="col-lg-9 image_col order-lg-2 order-1">
								<div class="single_product_image">
									<div class="single_product_image_background" style="background-image:url()"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
					
			</div>
		</div>

	</div>

	<div class="tabs_section_container">

		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabs_container">
						<ul class="tabs d-flex flex-sm-row flex-column align-items-left align-items-md-center justify-content-center">
							<li class="tab active" data-active-tab="tab_1"><span>Mô tả</span></li>
							<li class="tab" data-active-tab="tab_2"><span>Thông tin thêm</span></li>
							<li class="tab" data-active-tab="tab_3"><span>Đánh giá</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">

					<!-- Tab Description -->

					<div id="tab_1" class="tab_container active">
						<div class="row">
							<div class="col-lg-12 desc_col">
								<div class="tab_title">
									<h4>Mô tả</h4>
								</div>
								<asp:Literal ID="Literal3" runat="server"></asp:Literal>
							
							</div>
							
						</div>
					</div>

					<!-- Tab Additional Info -->

					<div id="tab_2" class="tab_container">
						<div class="row">
							<div class="col additional_info_col">
								<div class="tab_title additional_info_title">
									<h4>Thông tin thêm</h4>
								</div>
								<asp:Literal ID="Literal4" runat="server"></asp:Literal>
							
							</div>
						</div>
					</div>

					<!-- Tab Reviews -->

					<div id="tab_3" class="tab_container">
						<div class="row">

							<!-- User Reviews -->

							<div class="col-lg-6 reviews_col">
								<div class="tab_title reviews_title">
									<h4>Reviews (2)</h4>
								</div>

								<!-- User Review -->

								<div class="user_review_container d-flex flex-column flex-sm-row">
						
									<div class="review">
										<div class="review_date">27 Aug 2016</div>
										<div class="user_name">Brandon William</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									</div>
								</div>

								<!-- User Review -->

								<div class="user_review_container d-flex flex-column flex-sm-row">
									<div class="user">
										<div class="user_pic"></div>
										<div class="user_rating">
											<ul class="star_rating">
												<li><i class="fa fa-star" aria-hidden="true"></i></li>
												<li><i class="fa fa-star" aria-hidden="true"></i></li>
												<li><i class="fa fa-star" aria-hidden="true"></i></li>
												<li><i class="fa fa-star" aria-hidden="true"></i></li>
												<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
											</ul>
										</div>
									</div>
									<div class="review">
										<div class="review_date">27 Aug 2016</div>
										<div class="user_name">Brandon William</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
									</div>
								</div>
							</div>

							<!-- Add Review -->

							<div class="col-lg-6 add_review_col">

								<div class="add_review">
								
								</div>

							</div>

						</div>
					</div>

				</div>
			</div>
		</div>

	</div>

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
<script src="Content/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="Content/js/single_custom.js"></script>

</body>

</html>
