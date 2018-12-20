<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="QuanLiThueXe.LoginSite.LoginPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="LoginFile/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="LoginFile/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="LoginFile/css/util.css">
	<link rel="stylesheet" type="text/css" href="LoginFile/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" runat="server">
					
                        <asp:HyperLink NavigateUrl="~/Home.aspx" class="login100-form-title p-b-49" runat="server" Text="DNTN YXM " Font-Size="XX-Large" Font-Bold="True" Font-Strikeout="False" Font-Underline="True"></asp:HyperLink>
					
					

					<div class="wrap-input100 validate-input m-b-23" >
						<span class="label-input100">Tài khoản:</span>
                        <asp:TextBox ID="TextBox1" class="input100" runat="server"></asp:TextBox>
						
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Mật khẩu:</span>
                        <asp:TextBox ID="TextBox2" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						<asp:Label ID="showmasage" runat="server"></asp:Label>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                            <asp:Button ID="Button1"  CssClass="login100-form-btn btn" runat="server" Text="Đăng nhập" Height="60px" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" />
							
						</div>
					</div>

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>
							Hoặc đăng nhập với
						</span>
					</div>

					<div class="flex-c-m">
						
                            <asp:Button ID="Button2"  CssClass="login100-form-btn" runat="server" Text="G+" BackColor="red" OnClick="Login1" Width="196px" Height="51px" />
													
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Chưa có tài khoản
						</span>

						<a runat="server" href="registerPage.aspx" class="txt2">
							Đăng kí ngay
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="LoginFile/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/vendor/bootstrap/js/popper.js"></script>
	<script src="LoginFile/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/vendor/daterangepicker/moment.min.js"></script>
	<script src="LoginFile/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="LoginFile/js/main.js"></script>

</body>
</html>