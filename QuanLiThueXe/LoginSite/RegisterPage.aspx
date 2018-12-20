<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="QuanLiThueXe.LoginSite.RegisterPage" %>

<!DOCTYPE html>
<html>
<head>
<title>Đăng kí tài khoản trên Yêu Xe Máy</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="RegisterFile/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Đăng kí</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form runat="server"  method="post">
                    <p>Tài khoản:</p>
					<asp:TextBox ID="txt1" runat="server" class="text" type="text" name="Username" placeholder="Username" >
                        </asp:TextBox>
                    <p>Email:</p>
					<asp:TextBox ID="txt2" runat="server" class="text" type="email" name="email" placeholder="Email" >
                        </asp:TextBox>
                    <p>Mật khẩu:</p>
					<asp:TextBox ID="txt3" runat="server" class="text" TextMode="password" name="password" placeholder="Password">
                        </asp:TextBox>
				
					<div class="wthree-text">
						
						<div class="clear"> </div>
					</div>
					<asp:Button runat="server" Text="Đăng kí" OnClick="Unnamed1_Click" />
                    <br />
                    <p>Đăng kí bằng </p>
&nbsp;<asp:Button runat="server" Text="G+" BackColor="Red" OnClick="Unnamed2_Click" />
				</form>
                
				<p>Bạn có tài khoản rồi ? <a runat="server" href="LoginPage.aspx"> Đăng nhập ngay!</a></p>
			</div>
		</div>
		<!-- copyright -->
		
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>