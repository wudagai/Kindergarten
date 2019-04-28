

 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	import="com.kindergarten.entity.User"
	%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
					<li class="c7"><a href="contact.html">欢迎：<%=((User)session.getAttribute("userLogin")).getUserName()%>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<header id="head" class="secondary">
		<div class="container">
			<h1>${children.childrenName}</h1>
			<p>My personal basic information</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
                    
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>学号</label> <input type="text" class="form-control"
									value="${children.childrenId}" disabled>
							</div>
						</div>
				</div>	
				<div class="row">	
						<div class="col-md-6">
							<div class="form-group">
								<label>性别</label> 
								<% if(((Children)session.getAttribute("children")).getChildrenSex().equals("0")){ %>
						<input type="radio" name="childrensex"
							style="width: 20px; margin-top: 12px;" value="0" 
							checked="checked" readonly="readonly"/> <label>男</label> <input type="radio"
							name="childrensex" style="width: 20px;" value="1"  readonly="readonly"/>
						<label>女</label>
						<%}else{ %>
						<input type="radio" name="childrensex"
							style="width: 20px; margin-top: 12px;" value="0"  readonly="readonly"/>
						<label>男</label> <input type="radio" name="childrensex"
							style="width: 20px;" value="1"  checked="checked" readonly="readonly" />
						<label>女</label>
						<%} %>
							</div>
						</div>
					</div>
	
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>出生日期</label> 
                           <input type="text" class="form-control"
						 value="<f:formatDate value='${children.birthday}' pattern='yyyy/MM/dd'/>" disabled>
							</div>
						</div>
						</div>
						<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>入园日期</label> 
								<input type="text" class="form-control" value="<f:formatDate value="${children.enterDate}" pattern="yyyy/MM/dd"/>"disabled>
								
							</div>
						</div>
						
					</div>
					
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>班级类别</label> 
								 <input type="text" class="form-control" value="${children.classinfos.classtype.classTypeName}" disabled> 
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>班级名称</label> 
								 <input type="text" class="form-control" value="${children.classinfos.className}" disabled> 
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>家长</label> <input type="text" class="form-control"
									value="${user.realName}" disabled>
							</div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>班主任</label> 	
								<input type="text" class="form-control"
									value="${children.classinfos.teacher.teacherName}" disabled>
							</div>
						</div>
					</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>班主任联系方式</label> <input type="text" class="form-control"
									value="${children.classinfos.teacher.teacherPhone}" disabled>
							</div>
						</div>
						
					</div>
				
				<h3 class="section-title"> <a href="UserIndex.jsp" >返回首页</a></h3>
			</div>
		</div>
	</div>  
	
	<!-- /container -->


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	 <script src="assets/js/jquery.min.js"></script> 
	<!-- <script src='assets/js/jquery-2.1.1.min.js'></script> -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="assets/js/google-map.js"></script>


</body>
</html>
