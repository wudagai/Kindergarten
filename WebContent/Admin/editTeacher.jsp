<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
			<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>
	<body>
		
		<div class="am-cf admin-main">
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-g">
						<form class="am-form am-form-horizontal" action="editTeacher.action" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden">
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									教师编号
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.teacherId}" readonly="readonly" name="teacherId" type="text">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								登录名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.loginName}" name="loginName" type="text">
									<small id="helpRole">输入登录名</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									姓名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.teacherName}" name="teacherName" type="text">
									<small id="helpRole">输入教师姓名</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									身高
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.hight}" name="hight" type="text">
									<small id="helpRole">输入教师身高</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									联系方式
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.teacherPhone}" name="teacherPhone" type="text">
									<small id="helpRole">输入教师联系方式</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									毕业院校
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${teacher.colleges}" name="colleges" type="text">
									<small id="helpRole">输入教师毕业院校</small>
								</div>
							</div>
		
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" value="编辑教师" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
