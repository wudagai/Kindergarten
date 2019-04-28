<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	%>
	<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
									学号
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${children.childrenId}" readonly="readonly"  type="text">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									幼儿姓名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${children.childrenName}"  type="text" readonly="readonly">
					
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									性别
								</label>
								<div class="am-u-sm-9">
							<% if(((Children)session.getAttribute("children")).getChildrenSex().equals("0")){ %>
						<input type="radio" name="childrensex"
							style="width: 20px; margin-top: 12px;" value="0" 
							checked="checked" readonly="readonly"/> <label>男</label> <input type="radio"
							name="childrensex" style="width: 20px;" value="1"  readonly="readonly"/>
						<label>女</label>
						<%}else{ %>
						<input type="radio" name="childrensex"
							style="width: 20px; margin-top: 12px;" value="0"  readonly="readonly"/>
						<label>男</label> <input type="radio" name="childrensex"
							style="width: 20px;" value="1"  checked="checked" readonly="readonly" />
						<label>女</label>
						<%} %>
					
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									出生日期
								</label>
								<div class="am-u-sm-9">
									<input value="<f:formatDate value='${children.birthday}' pattern='yyyy/MM/dd'/>" readonly="readonly" />
					
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									入园日期
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="<f:formatDate value="${children.enterDate}" pattern="yyyy/MM/dd"/>" readonly="readonly" type="text">
							
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									班级类别
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${children.classinfos.classtype.classTypeName}" readonly="readonly" type="text">
						
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									班级名称
								</label>
								<div class="am-u-sm-9">
									
									<input id="roleName" required="" value="${children.classinfos.className}" readonly="readonly" type="text">
				
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" onclick="toaddExamin(${children.childrenId})"  value="增加体检信息" type="button">
										<input id="addRole" class="am-btn am-btn-success" onclick="leaves()" value="请假信息管理" type="button">
										<input id="addRole" class="am-btn am-btn-success" onclick="toinstertMedic(${children.childrenId})" value="增加用药信息" type="button">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
            <script>
	
            function toaddExamin(u){
				
				location.href= "toinstertExamination.action?childrenId="+u;

				}
         function toinstertMedic(u){
				
				location.href= "toinstertMedication.action?childrenId="+u;

				}
         function leaves(){
				
				location.href= "selectLeave.action";

				}
		</script>
	</body>
</html>
