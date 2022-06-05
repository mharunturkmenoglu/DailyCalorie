<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DailyCalorie.Home" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Shopping</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<form id="form1" runat="server">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">Daily Calorie</span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<label>Name</label>
			<br/>
			<input type="text" runat="server" name="emailTxt" id="emailTxt">
			<br/>
			<label>Surname</label>
			<br/>
			<input type="text" runat="server" name="passwordTxt" id="passwordTxt">
			<br/>
			<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
			<br/>
			<asp:Label ID="Label1" runat="server"></asp:Label>
			<a href="#"><p class="small">Forgot your password?</p></a>
		</div>
	</div>
    </form>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>
