<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	import="com.kindergarten.entity.User"
	%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>Home</title>
	<link rel="favicon" href="User/assets/images/favicon.png">
	<link rel="stylesheet" href="User/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="User/assets/css/font-awesome.min.css"> 
	<link rel="stylesheet" href="User/assets/css/bootstrap-theme.css" media="screen"> 
	<link rel="stylesheet" href="User/assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='User/assets/css/camera.css' type='text/css' media='all'>

</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.html">
					<img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
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
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

		<header id="head" class="secondary">
            <div class="container">
                    <h1>我的孩子</h1>
                    <p>My Children</p>
                </div>
    </header>


	<!-- container -->
	<section class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="portfolio" class="page-section section appear clearfix">
					<br />
					<br />
					<p>
						幼儿教育是基础教育的重要组成部分，是我国学校教育和终身教育的奠基阶段。城乡各类幼儿园都应从实际出发，因地制宜地实施素质教育，为幼儿一生的发展打好基础
					
					</p>
					<p>
                        幼儿是祖国的花朵，是我们未来的希望， 幼儿教育为幼儿的一生奠定了坚实的基础，幼幼儿教育阶段在幼儿的成长历程中占据着举足轻重的作用。常言道：“十年树木， 百年树人”
                   	</p>    
                    <p>
                    教育事业不仅是一项长期的任务  ，而且是极为重要的工作，幼儿教育是基础教育的重要组成部分。只有充分认识到幼教工作的重要性，才能把幼教事业做好，才能对幼儿的身心发展有所助益，才能更加有助于他们以后的健康成长					
				</p>
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="portfolio-items isotopeWrapper clearfix" id="3">
                            <c:forEach items="${ch.childrens}" var="children">
                           
									<article class="col-sm-4 isotopeItem webdesign">
										<div class="portfolio-item">
											<!-- <img src="assets/images/portfolio/img1.jpg" alt="" />  -->
											 <c:if test="${children.childrenPhoto!=null}">
                                             <img id="images" width="450px" height="320px" src="${pageContext.request.contextPath}/${children.childrenPhoto}"/>
                                             </c:if> 
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<!-- <a href="assets/images/portfolio/img1.jpg" class="fancybox"> -->
														<a href="User/selectChildrenById.action?childrenId=${children.childrenId}"><h5>${children.childrenName}信息 </h5></a>
														<li><a href="User/selectExaminationByChildren.action?childrenId=${children.childrenId}" class="current btn-theme btn-small" data-filter="*">体检信息</a></li>
								<li><a href="User/selectMedicationByChildren.action?childrenId=${children.childrenId}" class="btn-theme btn-small" data-filter=".webdesign">用药情况</a></li>
								<li><a href="User/tochildrenLeave.action?childrenId=${children.childrenId}" class="btn-theme btn-small" data-filter=".photography">我要请假</a></li>													
														
										
												</div>
											</div>
										
										</div>
								
									</article>
                                </c:forEach>
									
								</div>

							</div>
						</div>
					</div>

				</section>
			</div>
		</div>

	</section>
	 <script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.cslider.js"></script>
	<script src="assets/js/jquery.isotope.min.js"></script>
	<script src="assets/js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>
