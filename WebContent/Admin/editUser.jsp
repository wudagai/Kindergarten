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
						<form class="am-form am-form-horizontal" action="editUser.action" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden">
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户编号
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${user.userId}" readonly="readonly" name="userId" type="text">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${user.userName}" name="userName" type="text" readonly="readonly">
					
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									真实姓名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${user.realName}" name="realName" type="text">
									<small id="helpRole">输入真实姓名</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									联系方式
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${user.userPhone}" name="userPhone" type="text">
									<small id="helpRole">输入用户电话</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户权限
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${user.userStat}" name="userStat" type="text">
									<small id="helpRole">'0'代表不可用，'1'代表可用</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户地址
								</label>
								<div class="am-u-sm-9">
									<textarea rows="" cols="50"  name="userAddress">${user.userAddress}</textarea>
									<small>输入用户地址</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" value="编辑用户" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
