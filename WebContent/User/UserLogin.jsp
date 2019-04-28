<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>

<link rel="stylesheet" href="logins/css/font-awesome.min.css"/>
<link rel="stylesheet" href="logins/css/loginMy.css"/>

<style>
html,body{width:100%;}
</style>

</head>
<script language="javascript">

	function refreshCode()
	{
		document.getElementById("code").src="<%=request.getContextPath()%>/ValidateCodeServlet?date="+new Date();
	}
</script>
<body>

<div class="main">

	<div class="center">
		<form action="LoginUser.action" id="formOne" method="post" onsubmit="return submitB()">
			<i class="fa fa-user Cone">  | </i>
			<input type="text" name="userName" id="user" placeholder="用户名" onblur="checkUser()"/>
			<span id="user_pass"></span><font color="red" size="-1" id="message">${messages }</font>
			<br/>
			<i class="fa fa-key Cone">  | </i>
			<input type="password" name="password" id="pwd" placeholder="密码" onblur="checkUser1()"/>
			<span id="pwd_pass"></span>
			<br/>
			<i class="fa fa-folder-open Cone">  | </i>
			<input type="text" name="code" id="surePwd" placeholder="验证码" onblur="checkUser2()"/>
			<span id="surePwd_pass" ></span> 
			<img src="<%=request.getContextPath()%>/ValidateCodeServlet" width="80" height="30" id="code" onclick="refreshCode()"/>
			<input type="submit" value="登录" id="submit" name="submit"/>
			<input type="button" value="注册" id="submit" onclick="addUser()" />
			<br/>
			
		</form>
	</div>
	
</div>


<script type="text/javascript" src="logins/js/loginMy.js"></script>
<div style="text-align:center;">
</div>
<script language="javascript">
	function addUser(){

	 window.location.href="addUser.action";
	
	}
</script>
</body>
</html>