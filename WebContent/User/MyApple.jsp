

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
<title>MyApple</title>
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
			<h1>报名信息</h1>
			<p>Online registration</p>
		</div>
	</header>

	<div class="container">
	 <c:forEach items="${apples.childrens}" var="apples">
		<div class="row">
		
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>姓名</label> <input type="text" class="form-control"
									value="${apples.childrenName}" disabled>
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group">
								<label>图片</label> 
								 <c:if test="${apples.childrenPhoto!=null}">
                                   <img id="images" width="100px" height="80px" src="${pageContext.request.contextPath}/${apples.childrenPhoto}"/>          
                               </c:if> 
							</div>
						</div>
						
				</div>	
				<div class="row">	
						<div class="col-md-6">
						<div class="form-group">
				 <label>性别</label> 
				<c:choose> 
					<c:when test="${apples.childrenSex==0}"> 	
						<input type="radio" name="${apples.childrenId}"
							style="width: 20px; margin-top: 12px;" value="0" 
							checked readonly="readonly"/> <label>男</label> <input type="radio"
							name="${apples.childrenId}" style="width: 20px;" value="1"  readonly="readonly"/>
						<label>女</label>
						</c:when>
						<c:otherwise>
						<input type="radio" name="${apples.childrenId}"
							style="width: 20px; margin-top: 12px;" value="0"  readonly="readonly"/>
						<label>男</label> <input type="radio" name="${apples.childrenId}"
							style="width: 20px;" value="1"  checked readonly="readonly" />
						<label>女</label>
						</c:otherwise>
				 </c:choose> 
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group">
								<label>出生日期</label> 
								<input type="text" class="form-control"
									name="birthday" value="<f:formatDate value='${apples.birthday}' pattern='yyyy/MM/dd'/>" disabled>
							</div>
						</div>
					</div>
					<div class="row">
						
						</div>
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>家长</label> <input type="text" class="form-control"
									value="${user.userName}" disabled>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>详细地址</label> 
								<input type="text" class="form-control" value="${apples.childrenAddress}" disabled>
									
							</div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
						<label>班级类别</label> 
					       <input type="text" class="form-control"
									value="${apples.classinfos.classtype.classTypeName}" disabled>		
				           </div>
						</div>
							<div class="col-md-6">
							<div class="form-group">
						<label>班级</label> 
					       	<input type="text" class="form-control"
									value="${apples.classinfos.className}" disabled>
				           </div>
						</div>
					</div>
			<c:choose> 
				<c:when test="${apples.childrenStat==0}">
					<button type="button" class="btt btnedit">
					<span class="am-icon-pencil-square-o"  onclick="to_editApple(${apples.childrenId})">修改</span> </button>
					<button type="button" class="bt btnedit">
					<span class="am-icon-pencil-square-o"  onclick="removeApple(${apples.childrenId})">取消报名</span> </button>
				</c:when>
			</c:choose>		
					
			<c:choose> 
				<c:when test="${apples.childrenStat==0}"> 	
					<button type="button" class="bu" style="display:none;">通过审核</button>
					<button type="button" class="but" >未审核</button>
					<button type="button" class="butt" style="display:none;">未通过审核</button>
				</c:when>
				<c:when test="${apples.childrenStat==1}"> 	
					<button type="button" class="bu" >通过审核</button>
					<button type="button" class="but" style="display:none;">未审核</button>
					<button type="button" class="butt" style="display:none;">未通过审核</button>
				</c:when>
				<c:otherwise>
				    <button type="button" class="bu" style="display:none;">通过审核</button>
					<button type="button" class="but" style="display:none;">未审核</button>
					<button type="button" class="butt" >未通过审核</button>
				</c:otherwise>	
					
			</c:choose> 
					<p><br/></p><p><br/></p>		
		
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
		 
		 if(confirm("确认取消报名吗")){
			 location.href= "User/removeApple.action?childrenId="+un
				return true;
			}
	
				}
		</script>
</body>
</html>
