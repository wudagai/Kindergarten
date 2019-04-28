

 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	import="com.kindergarten.entity.User"
	%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	    <base href="<%=basePath%>">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="free-educational-responsive-web-template-webEdu">
<meta name="author" content="webThemez.com">
<title>Myleave</title>
<link rel="favicon" href="User/assets/images/favicon.png">
<link rel="stylesheet" href="User/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="User/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="User/assets/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" href="User/assets/css/style.css"> 
<link rel='stylesheet' id='camera-css' href='User/assets/css/camera.css'
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
					<li class="c1 active"><a href="User/UserIndex.jsp">首页</a></li>
					<li class="c3"><a href="User/selectAllLeave.action">请假详情</a></li>
					<li class="c4"><a href="User/selectClassinfo.action">网上报名</a></li>
					
					<li class="c5"><a href="User/exit.action">退出</a></li>
					<li class="c7"><a href="contact.html">欢迎：<%=((User)session.getAttribute("userLogin")).getUserName()%> </a></li>
				</ul>
			</div>
		</div>
	</div>

	<header id="head" class="secondary">
		<div class="container">
			<h1>请假信息</h1>
			<p>Online registration</p>
		</div>
	</header>

	<div class="container">
	 <c:forEach items="${users.childrens}" var="uc">
		<div class="row">
		
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>姓名</label> <input type="text" class="form-control"
									value="${uc.childrenName}" disabled>
							</div>
						</div>
				</div>	
				 <c:forEach items="${uc.childrenleaves}" var="ucl">
				<div class="row">	
						<div class="col-md-6">
							<div class="form-group">
								<label>请假类型</label> 
								<input type="text" class="form-control"
									 value="${ucl.leaveType}" disabled>
							</div>
						</div>
					</div>
					<div class="row">
						
						</div>
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>开始日期</label> <input type="text" class="form-control"
									value="<f:formatDate  value='${ucl.leaveStart}' pattern='yyyy/MM/dd' />" disabled>
							</div>
						</div>
						
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>结束日期</label> 
								<input type="text" class="form-control"
									value="<f:formatDate  value='${ucl.leaveEnd}' pattern='yyyy/MM/dd' />" disabled>
									
							</div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
						<label>请假原因</label> 
					       <input type="text" class="form-control"
									value="${ucl.leaveReason}" disabled>		
				           </div>
						</div>
							
					</div>
					
			<c:choose> 
				<c:when test="${ucl.leaveState==0}"> 	
					<button type="button" class="bu" style="display:none;">批准</button>
					<button type="button" class="but" >未审核</button>
					<button type="button" class="butt" style="display:none;">不批准</button>
				</c:when>
				<c:when test="${ucl.leaveState==1}"> 	
					<button type="button" class="bu" >批准</button>
					<button type="button" class="but" style="display:none;">未审核</button>
					<button type="button" class="butt" style="display:none;">不批准</button>
				</c:when>
				<c:otherwise>
				    <button type="button" class="bu" style="display:none;">批准</button>
					<button type="button" class="but" style="display:none;">未审核</button>
					<button type="button" class="butt" >不批准</button>
				</c:otherwise>	
					
			</c:choose> 
					<p><br/></p><p><br/></p>		
		     </c:forEach>
			</div>

		</div>
		</c:forEach>
	</div>  
	
	

	<script src="User/assets/js/jquery.min.js"></script> 
	<script src="User/assets/js/bootstrap.min.js"></script>
	<script src="User/assets/js/custom.js"></script>
	<script type="text/javascript" src="User/js/laydate.js"></script>
	 <script src="User/assets/js/google-map.js"></script> 
	 <script type="text/javascript">
	 function to_editApple(u){
		location.href= "User/to_editApple.action?childrenId="+u
			}

	 function removeApple(un){
		 if(confirm("确认删除吗")){
			 location.href= "User/removeApple.action?childrenId="+un
				return true;
			}
		 
			
				}
		</script>
</body>
</html>
