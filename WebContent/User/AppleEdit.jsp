

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
<title>AppleEdit</title>
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
			<h1>修改报名信息</h1>
			<p>Online registration</p>
		</div>
	</header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title"></h3>
				<p></p>
                 <form method="post" enctype="multipart/form-data"  action="editApple.action"> 
                 <div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>报名编号</label> <input type="text" class="form-control"
									name="childrenId" readonly="readonly" value="${apples.childrenId}" >
									
							</div>
						</div>
						</div>
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>姓名</label> <input type="text" class="form-control"
									name="childrenName"  value="${apples.childrenName}">
							</div>
						</div>
						
						
				</div>	
				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>图片</label> 
								<input type="file" name="pictureFile" id="pictureFile" value="请选择图片" />
								<img id="images" width="100px" height="80px" src="${pageContext.request.contextPath}/${apples.childrenPhoto}"/>
							</div>
						</div>
						
				</div>	
				<div class="row">	
						<div class="col-md-6">
						<div class="form-group">
					 <label>性别</label> 
				<c:choose> 
					<c:when test="${apples.childrenSex==0}"> 	
						<input type="radio" name="childrenSex"
							style="width: 20px; margin-top: 12px;" value="0" 
							checked /> <label>男</label> <input type="radio"
							name="childrenSex" style="width: 20px;" value="1"  />
						<label>女</label>
						</c:when>
						<c:otherwise>
						<input type="radio" name="childrenSex"
							style="width: 20px; margin-top: 12px;" value="0"  />
						<label>男</label> <input type="radio" name="childrenSex"
							style="width: 20px;" value="1"  checked  />
						<label>女</label>
						</c:otherwise>
				 </c:choose> 
							</div>
						</div>
					</div>
	
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<label>出生日期</label> 
								 <input type="text" id="demo" class="form-control"
									name="birthday" value="<f:formatDate value='${apples.birthday}' pattern='yyyy/MM/dd'/>">
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
								<input type="text" class="form-control" name="childrenAddress" value="${apples.childrenAddress}" >
									
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
					       <select class="text_cray" name="classinfos.classId"  id="cId" >
					       <option value="${apples.classinfos.classId}">${apples.classinfos.className}</option>
                            </select>			
				           </div>
						</div>
						
					</div>
					<button type="submit" class="btn-inline">确认修改</button><p><br/></p>	
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
!function(){
	laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
	laydate({elem: '#demo'});//绑定元素
}();


</script>
<script type="text/javascript">
$(function(){
	$('#ctId').change(function(){	
		var ctyId = $(this).val();
		/* alert(ctyId);  */
		if(ctyId != ''){
			/* alert(ctyId); */
			$.ajax({
				type: 'post',
				url: '${pageContext.request.contextPath}/User/selectClassinfoByType.action',
				data: 'ctyId=' + ctyId,
				success: function(data) {
					 //console.log(data);
					 $('#cId').empty();	 
					  //for(i=0;i<data.length;i++){
						//$('#cId').append('<option value="'+data[i]["classId"]+'">'+data[i]["className"]+'</option>');
						//$("#id值").append("<option>"+data[i][内容]+"</option>"
						//console.log(data[i]["className"]);						
					   //} 
			          /*  $.each(JSON.parse(data),function(index,item){
			    	   alert(JSON.parse(data));
				   		$('#cId').append('<option value="'+item.classId+'">'+item.className+'</option>'); */
				   		
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
