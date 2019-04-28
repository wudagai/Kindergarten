<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.kindergarten.entity.User"%>
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
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
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
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="c1 active"><a href="UserIndex.jsp">首页</a></li>
					<li class="c3"><a href="selectAllLeave.action">请假详情</a></li>
					<li class="c4"><a href="selectClassinfo.action">网上报名</a></li>
					
					<li class="c5"><a href="exit.action">退出</a></li>
					<li class="c7"><a href="contact.html">欢迎：<%=((User)session.getAttribute("userLogin")).getUserName()%> </a></li>
					<!-- <li class="c6 dropdown">
						<td  width="140" valign="top" bgcolor="#deedf8" class="text_cray1"></td>
						
					</li> -->
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head" class="secondary">
		<div class="container">
			<h1>个人信息</h1>
			<p>My personal basic information</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title">座右铭</h3>
				<p>${user.mooto}</p>

				<form class="form-light mt-20" role="form" action="to_editUser.action?userId=${user.userId}">
					<div class="form-group">
						<label>用户名</label> <input type="text" class="form-control"
							value="${user.userName}" disabled>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>真实姓名</label> <input type="email" class="form-control"
									value="${user.realName}" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>手机号码</label> <input type="text" class="form-control"
									value="${user.userPhone}" disabled>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label for="">性别</label>
						<!--      男：<input type="radio" name="UserSex" value="0" style="width: 20px; margin-top: 12px;">
                              女：<input type="radio" name="UserSex" value="1" style="width: 20px;">  -->
						<% if(((User)session.getAttribute("user")).getUserSex().equals("0")){ %>
						<input type="radio" name="UserSex"
							style="width: 20px; margin-top: 12px;" value="0" 
							checked="checked" readonly="readonly"/> <label>男</label> <input type="radio"
							name="UserSex" style="width: 20px;" value="1"  readonly="readonly"/>
						<label>女</label>
						<%}else{ %>
						<input type="radio" name="UserSex"
							style="width: 20px; margin-top: 12px;" value="0"  readonly="readonly"/>
						<label>男</label> <input type="radio" name="UserSex"
							style="width: 20px;" value="1"  checked="checked" readonly="readonly" />
						<label>女</label>
						<%} %>
					</div>
					<div class="form-group">
						<label>家庭住址</label>
						<textarea class="form-control" id="message" disabled>"${user.userAddress}"</textarea>
					</div>
				</form>
				<h3 class="section-title"> <a href="UserIndex.jsp" >返回首页</a></h3>
			</div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6">
						
						<div class="contact-info">
							<!-- <h5>Address</h5>
							<p>5th Street, Carl View - United States</p>

							<h5>Email</h5>
							<p>info@webthemez.com</p>

							<h5>Phone</h5>
							<p>+09 123 1234 123</p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<!-- <script src='assets/js/jquery-2.1.1.min.js'></script> -->
	 <script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="assets/js/google-map.js"></script>


</body>
</html>
