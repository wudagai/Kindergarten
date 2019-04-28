
 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" 
	import="com.kindergarten.entity.User"
	%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="free-educational-responsive-web-template-webEdu">
<meta name="author" content="webThemez.com">
<title>Home</title>
<link rel="favicon" href="assets/images/favicon.png">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" href="assets/css/style.css">
<link rel='stylesheet' id='camera-css' href='assets/css/camera.css'
	type='text/css' media='all'>

</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> <img
					src="assets/images/logo.png" alt="Techro HTML5 template"></a>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head" class="secondary">
		<div class="container">
			<h1>用户注册</h1>
			<p>User login</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<p></p>

				<form class="form-light mt-20"  action="insertUser.action" method="post">
					<div class="form-group">

						<label>用户名</label> 
						<input type="text" class="form-control" name="userName" >
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>真实姓名</label> <input type="text" class="form-control" name="realName">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>手机号码</label> <input type="text" class="form-control" name="userPhone"  >
							</div>
						</div>
					</div>
				<div class="row">	
						<div class="col-md-6">
						<div class="form-group">
					<td width="98" height="40" align="left" class="text_cray1">性 别：</td>
                  <td height="35" colspan="3" align="left" class="text_cray1">
                    <span class="mr25">
                    <input type="radio" name="userSex" value="0" checked="checked" />
                    </span>
                    <span class="text_cray">
                    <label>男</label>
                    <input type="radio" name="userSex" value="1" />
                    <label>女</label>
                    </span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>家庭住址</label>
						<textarea class="form-control" name="userAddress" id="message" ></textarea>
					</div>
					<div class="form-group">
						<label>座右铭</label>
						<textarea class="form-control" name="mooto" id="message" ></textarea>
					</div>
					<button type="submit" class="btn btn-two">注册</button><p><br/></p>
				</form>
			</div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6">
						
						<div class="contact-info">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->

	

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
 	 <script src="assets/js/jquery.min.js"></script> 
 	<!-- <script src='assets/js/jquery-2.1.1.min.js'></script> -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<script src="assets/js/google-map.js"></script>


</body>
</html> 
