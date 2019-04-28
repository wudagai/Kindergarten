
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
					<li class="c3"><a href="User/selectAllLeave.action">请假详情</a></li>
					<li class="c4"><a href="selectClassinfo.action">网上报名</a></li>
					
					<li class="c5"><a href="exit.action">退出</a></li>
					<li class="c7"><a href="contact.html">欢迎：<%=((User)session.getAttribute("userLogin")).getUserName()%> </a></li>
				</ul>
			</div>
		</div>
	</div>
	<header id="head" class="secondary">
		<div class="container">
			<h1>用药信息</h1>
			<p>My personal basic information</p>
		</div>
	</header>
 <c:forEach items="${childrenmedication.medications}" var="cm">  
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title">${childrenmedication.childrenName}</h3>
				<p></p>
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>病症</label> <input type="text" class="form-control"
									value="${cm.symptoms}" disabled>
							</div>
						</div>
							<div class="col-md-6">
                      <div class="form-group">
								<label>发病时间</label> 
					   <%--  <f:formatDate value="${cm.sickTime}" pattern="yyyy/MM/dd HH:mm:ss"/> --%>
						  <input type="text" class="form-control"
						 value="<f:formatDate value='${cm.sickTime}' pattern='yyyy/MM/dd HH:mm:ss'/>" disabled>
					</div>
					</div>
				</div>
				
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>用药时间</label> 
								 <%-- <f:formatDate value="${cm.takeMedicineTime}" pattern="yyyy/MM/dd HH:mm:ss"/> --%>
								  <input type="text" class="form-control"
						 value="<f:formatDate value='${cm.takeMedicineTime}' pattern='yyyy/MM/dd HH:mm:ss'/>" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>服用药物</label> <input type="text" class="form-control"
									value="${cm.medicine}" disabled>
							</div>
						</div>
					</div>			
				

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>服药次数/天</label> <input type="text" class="form-control"
									value="${cm.frequency}" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>服药方法</label> <input type="text" class="form-control"
									value="${cm.means}" disabled>
							</div>
						</div>
					</div>
					
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>服药天数</label> 
								 <input type="text" class="form-control" value="${cm.takeMedicineDay}" disabled> 
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>有无不良反应</label> <input type="text" class="form-control"
									value="${cm.untowardEffect}" disabled>
							</div>
						</div>
					</div>
					
					<div class="row">
					<div class="col-md-6">
					<div class="form-group">
						<label>用药备注</label>
						<textarea class="form-control" id="message" disabled>"${cm.remarks}"</textarea>
					</div>
                 </div>
			</div>
		</div>
	</div>  
</div>	
	</c:forEach>
	 <script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="assets/js/google-map.js"></script>


</body>
</html>
