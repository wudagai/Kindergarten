

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
<title>Apple</title>
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
					<li class="c7"><a href="contact.html">欢迎：<%=((User)session.getAttribute("userLogin")).getUserName()%> </a></li>
				</ul>
			</div>
		</div>
	</div>

	<header id="head" class="secondary">
		<div class="container">
			<h1>我要请假</h1>
			<p>Online registration</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
                 <form method="post"  action="childrenLeave.action"> 
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>姓名</label> <input type="text" class="form-control"
									name="children.childrenName" readonly="readonly" value="${children.childrenName}" >
									<input type="hidden" name="children.childrenId" value="${children.childrenId}"></input>
							</div>
						</div>
						
				</div>	
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>请假类型</label> 
								 <input required="required"  type="text"  class="form-control"
									name="leaveType">
							</div>
						</div>
						</div>
						<div class="row">
						
						
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>请假开始时间</label>
								 <input required="required"  type="text"  class="inline laydate-icon" id="start" style="width:200px; margin-right:10px;" name="leaveStart" >
							</div>
						</div>
						</div>
			
							<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>请假结束时间</label> 
								<input required="required"  type="text" class="inline laydate-icon" id="end" style="width:200px;" name="leaveEnd" >
									
							</div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>请假原因</label> 
								<input required="required"  type="text" class="form-control" name="leaveReason" >
									
							</div>
						</div>
						</div>
					
					<button type="submit" class="btn btn-two">确认请假</button><p><br/></p>	
				
				<h3 class="section-title"> <a href="UserIndex.jsp" >返回首页</a></h3>
				</form>
			</div>
		</div>
	</div>  
	<script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
	<script type="text/javascript" src="js/laydate.js"></script>
	 <script src="assets/js/google-map.js"></script> 
<script type="text/javascript">

var start = {
	    elem: '#start',
	    format: 'YYYY/MM/DD',
	    min: laydate.now(), //设定最小日期为当前日期 
	    max: '2099/06/06', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end.min = datas; //开始日选好后，重置结束日的最小日期
	         end.start = datas //将结束日的初始值设定为开始日
	    }
	};

	var end = {
	    elem: '#end',
	    format: 'YYYY/MM/DD ',
	    min: laydate.now(),  
	    max: '2099/06/06',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start.max = datas; //结束日选好后，充值开始日的最大日期
	    }
	};
	laydate(start);
	laydate(end);



</script>


</body>
</html>
