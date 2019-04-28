<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员</title>

<link href="logins/css/style.css" rel="stylesheet" type="text/css">

</head>

<body class="login">

<div class="login_m">
	<div class="login_logo"><img src="logins/images/logo.png" width="196" height="46"></div>
	<div class="login_boder">
	<form method="post" action="LoginAdmin.action">
		<div class="login_padding">
			<h2>管理员</h2>
			<label>
				<input type="text" id="loginName" name="adminName"  class="txt_input txt_input2" onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}" value="Your name">
			</label>
			<h2>密码</h2>
			<label>
				<input type="password" name="password" id="userpwd" class="txt_input" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="******">
			</label>
			<div class="rem_sub">
				<label>
					<input type="submit" class="sub_button" name="button" id="button" value="登录" style="opacity: 0.7;">
				</label>
			</div>
		</div>
		</form>
	</div><!--login_boder end-->
</div><!--login_m end-->

<br />
<br />


</body>
</html>