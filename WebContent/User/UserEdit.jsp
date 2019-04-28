
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

				<form class="form-light mt-20"  action="editUser.action" method="post">
					<div class="form-group">
					<div class="form-group">
						<label>您的编号</label> 
						<input type="text" class="form-control" name="userId" value="${user.userId}" readonly="readonly">
					</div>
						<label>用户名</label> 
						<input type="text" class="form-control" name="userName" value="${user.userName}" readonly="readonly">
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>真实姓名</label> <input type="text" class="form-control" name="realName" value="${user.realName}" >
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>手机号码</label> <input type="text" class="form-control" name="userPhone"   value="${user.userPhone}" >
							</div>
						</div>
					</div>
					
				 <div class="form-group">
						<label for="">性别</label>
						<!--      男：<input type="radio" name="UserSex" value="0" style="width: 20px; margin-top: 12px;">
                              女：<input type="radio" name="userSex" value="1" style="width: 20px;">  -->
					 <% if(((User)session.getAttribute("userLogin")).getUserSex().equals("0")){ %>	
						<input type="radio" name="userSex" style="width: 20px; margin-top: 12px;" value="0" checked="checked" /> 
						<label>男</label> 
						<input type="radio" name="userSex" style="width: 20px;" value="1"  />
						<label>女</label>
						<%}else{ %>
						<input type="radio" name="userSex" style="width: 20px; margin-top: 12px;" value="0"  />
						<label>男</label> 
						<input type="radio" name="userSex" style="width: 20px;" value="1" checked="checked" />
						<label>女</label>
						<%} %>
					</div> 
					<div class="form-group">
						<label>家庭住址</label>
						<textarea class="form-control" name="userAddress" id="message" >"${user.userAddress}"</textarea>
					</div>
					<button type="submit" class="btn btn-two">保存</button><p><br/></p>
				</form>
				<h3 class="section-title"> <a href="UserIndex.jsp" >返回首页</a></h3>
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
