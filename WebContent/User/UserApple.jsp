

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
			<h1>网上报名</h1>
			<p>Online registration</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
                 <form method="post" enctype="multipart/form-data"  action="insertChildren.action"> 
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>姓名</label> <input required="required" type="text" class="form-control"
									name="childrenName" >
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group">
								<label>图片</label> 
								<input type="file" name="pictureFile" id="pictureFile" value="请选择图片" />
								
							</div>
						</div>
						
				</div>	
				<div class="row">	
						<div class="col-md-6">
						<div class="form-group">
					<td width="98" height="40" align="left" class="text_cray1">性 别：</td>
                  <td height="35" colspan="3" align="left" class="text_cray1">
                    <span class="mr25">
                    <input type="radio" name="childrenSex" value="0" checked="checked" />
                    </span>
                    <span class="text_cray">
                    <label>男</label>
                    <input type="radio" name="childrenSex" value="1" />
                    <label>女</label>
                    </span>
							</div>
						</div>
					</div>
	
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>出生日期</label> 
								 <input required="required"  type="text" id="demo" class="form-control"
									name="birthday">
							</div>
						</div>
						</div>
						<div class="row">
						
						
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>家长</label> <input type="text" class="form-control"
									name="user.userName" readonly="readonly" value="${user.userName}" >
									<input type="hidden" name="user.userId" value="${user.userId}"></input>
							</div>
						</div>
						</div>
							<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>详细地址</label> 
								<input required="required"  type="text" class="form-control" name="childrenAddress" >
									
							</div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
						<label>选择班级类别</label> 
					       <select class="text_cray" id="ctId">
                           <c:forEach items="${classType}" var="ct">
                          <option value="${ct.classTypeId}">${ct.classTypeName}</option>
                    
                         </c:forEach>
                      
                            </select>			
				           </div>
						</div>
						
					</div>
					<div class="row">
					
						<div class="col-md-6">
							<div class="form-group">
						<label>选择班级</label> 
					       <select class="text_cray" name="classinfos.classId" id="cId" >
                        <%--    <c:forEach items="${classinfos}" var="c">
                          <option value="${c.classId }">${c.className}</option>
                    
                         </c:forEach> --%>
                      
                            </select>			
				           </div>
						</div>
						
					</div>
					<button type="submit" class="btn btn-two">确认报名</button><p><br/></p>	

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
!function(){
	laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
	/* alert(); */
	laydate({elem: '#demo'});//绑定元素
}();


</script>
<script type="text/javascript">
$(function(){
	$('#ctId').change(function(){	
		var ctyId = $(this).val();
		if(ctyId != ''){
			$.ajax({
				type: 'post',
				url: '${pageContext.request.contextPath}/User/selectClassinfoByType.action',
				data: 'ctyId=' + ctyId,
				success: function(data) {
					 $('#cId').empty();	 
				   		$.each(data,function(index,item){
                        $('#cId').append('<option value="'+item.classId+'">'+item.className+'</option>');
			       
				 });  
			       
				} 							
			});			
		} 		
	}); 

});
</script>

</body>
</html>
