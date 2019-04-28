<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Teacher"
	%>
<!DOCTYPE html>
<html>

	<head>
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<title>班主任</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!--link rel='stylesheet' type='text/css' href='css/googlefonts.css'-->
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<!-- Theme CSS -->
		<link rel="stylesheet" type="text/css" href="css/vendor.css">
		<link rel="stylesheet" type="text/css" href="css/theme.css">
		<link rel="stylesheet" type="text/css" href="css/utility.css">
		<link rel="stylesheet" type="text/css" href="css/custom.css">
		<!-- Favicon -->
		<link rel="shortcut icon" href="Admin/img/favicon.ico">

		<style>
			.nav li {
				border-bottom: 1px solid #eee;
			}
		</style>

	</head>

	<!-- Start: Header -->
	<header class="navbar navbar-fixed-top">
		<div class="navbar-branding"> <span id="toggle_sidemenu_l" class="glyphicons glyphicons-show_lines"></span>
			<a class="navbar-brand" style="padding-top: 7px;">阳光幼儿园</a>
		</div>
		<div class="navbar-left">
			<div class="navbar-divider"></div>
			<div id="settings_menu">
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="javascript:void(0);"><span class="glyphicons glyphicons-bell text-purple mr15"></span>Users</a>
					</li>
					<li>
						<a href="javascript:void(0);"><span class="glyphicons glyphicons-notes text-blue mr15"></span>Servers</a>
					</li>
					<li>
						<a href="javascript:void(0);"><span class="glyphicons glyphicons-facebook text-orange mr15"></span>Crons</a>
					</li>
				</ul>
			</div>

		</div>
		<div class="navbar-right">
		</div>
	</header>
	<div id="main">
		<aside id="sidebar_left">
			<div class="user-info">
				<div class="media">
					<a class="pull-left" href="#">
						<div class="media-object border border-purple br64 bw2 p2"> <img class="br64" src="img/timg.gif" alt="..."> </div>
					</a>
					<div class="mobile-link"> <span class="glyphicons glyphicons-show_big_thumbnails"></span> </div>
					<div class="media-body">
						<h5 class="media-heading mt5 mbn fw700 cursor"><%=((Teacher)session.getAttribute("teacherLogin")).getLoginName()%><span class="caret ml5"></span></h5>
						<div class="media-links fs11">
							<a href="#"></a><i class="fa fa-circle text-muted fs3 p8 va-m"></i>
							<a href="exit.action">退出</a>

						</div>
					</div>
				</div>
			</div>
			<div class="user-divider"></div>
			<div class="user-menu">
				<div class="row text-center mb15">
					<div class="col-xs-4">
						<a href="dashboard.html"> <span class="glyphicons glyphicons-home fs22 text-blue2"></span>
							<h5 class="fs11">Home</h5>
						</a>
					</div>
					<div class="col-xs-4">
						<a href="messages.html"> <span class="glyphicons glyphicons-inbox fs22 text-orange2"></span>
							<h5 class="fs11">Inbox</h5>
						</a>
					</div>
					<div class="col-xs-4">
						<a href="tables.html"> <span class="glyphicons glyphicons-bell fs22 text-purple2"></span>
							<h5 class="fs11">Data</h5>
						</a>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-xs-4 text-center">
						<a href="timeline.html"> <span class="glyphicons glyphicons-imac fs22 text-grey3"></span>
							<h5 class="fs11">Views</h5>
						</a>
					</div>
					<div class="col-xs-4">
						<a href="profile.html"> <span class="glyphicons glyphicons-settings fs22 text-green2"></span>
							<h5 class="fs11">Settings</h5>
						</a>
					</div>
					<div class="col-xs-4">
						<a href="gallery.html"> <span class="glyphicons glyphicons-restart fs22 text-light6"></span>
							<h5 class="fs11">Images</h5>
						</a>
					</div>
				</div>
			</div>
			<div class="sidebar-menu">
				<ul class="nav sidebar-nav">

					<li>
						<a class="accordion-toggle" href="selectTeaherClass.action" target="right"> <span class="glyphicons glyphicons-settings"></span><span class="sidebar-title">我管理的班级</span><span class="caret"></span></a>

					</li>	
				</ul>
			</div>
		</aside>
		<div style="position: absolute;left: 230px;width:88%;">
		<iframe scrolling="yes" frameborder="0" name="right" src="selectTeaherClass.action" width="100%" height="900"></iframe>
	</div>
		</div>
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="myplugs/js/plugs.js"></script>
	</body>

</html>