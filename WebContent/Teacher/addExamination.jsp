<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
					
						<form class="am-form am-form-horizontal" action="instertExamination.action" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden">
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									幼儿姓名
						
								</label>
								<div class="am-u-sm-9">
									<input id="roleName"  value="${children.childrenName}" type="text" name="children.childrenName" readonly="readonly">
					                  <input type="hidden" name="children.childrenId" value="${children.childrenId}"></input>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									体检日期
								</label>
								<div class="am-u-sm-9">
									<input  name="examinationDate" id="demo"/>
									<small id="helpRole">输入体检日期</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									身高
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""   name="hight" type="text">
									<small id="helpRole">输入幼儿身高</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									听力
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  name="hearing" type="text">
									<small id="helpRole">请输入幼儿听力</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									视力
								</label>
								<div class="am-u-sm-9">
									<%-- <textarea rows="" cols="50"  name="userAddress">${user.userAddress}</textarea> --%>
									<input id="roleName" required=""  name="vision" type="text">
									<small>请输入幼儿视力</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									牙齿数
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" name="teethNumber" type="text">
									<small id="helpRole">请输入幼儿牙齿数</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									传染性疾病调查
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  name="infectiousDisease" type="text">
									<small id="helpRole">请输入幼儿传染性疾病调查信息</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									体检备注
								</label>
								<div class="am-u-sm-9">
									<%-- <textarea rows="" cols="50"  name="userAddress">${user.userAddress}</textarea> --%>
									<input id="roleName" required=""  name="remarks" type="text">
									<small>请输入幼儿体检备注</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success"  value="添加" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="date/js/laydate.js"></script>
		<script type="text/javascript">
		!function(){
			laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
			laydate({elem: '#demo'});//绑定元素
		}();
      

		</script>
	</body>
</html>
