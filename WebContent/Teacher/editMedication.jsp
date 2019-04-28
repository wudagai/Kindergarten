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
					
						<form class="am-form am-form-horizontal" action="editMedication.action?medicationId=${medication.medicationId}" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden">
							
								<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									病症
								</label>
								<div class="am-u-sm-9">
								<input id="roleName" required=""  value="${medication.medicationId}" name="medicationId"   type="hidden">
									<input id="roleName" required=""  value="${medication.symptoms}" name="symptoms" type="text">
									<small id="helpRole">输入病症</small>
								</div>
							</div>
								<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									发病时间
								</label>
								<div class="am-u-sm-9">
									<input value="<f:formatDate  value='${medication.sickTime}' pattern='yyyy/MM/dd HH:mm:ss' />" name="sickTime" class="inline laydate-icon" id="start" style="width:200px; margin-right:10px;"/>
									<small id="helpRole">输入发病时间</small>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用药时间
								</label>
								<div class="am-u-sm-9">
									<input value="<f:formatDate  value='${medication.takeMedicineTime}' pattern='yyyy/MM/dd HH:mm:ss' />" name="takeMedicineTime" class="inline laydate-icon" id="end" style="width:200px;"/>
									<small id="helpRole">输入用药时间</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									服用药物
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${medication.medicine}" name="medicine" type="text">
									<small id="helpRole">输入服用药物</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									服药次数/天
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${medication.frequency}" name="frequency" type="text">
									<small id="helpRole">请输入服药次数/天</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									服药方法
								</label>
								<div class="am-u-sm-9">
									<%-- <textarea rows="" cols="50"  name="userAddress">${user.userAddress}</textarea> --%>
									<input id="roleName" required=""  value="${medication.means}" name="means" type="text">
									<small>请输入服药方法</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									服药天数
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${medication.takeMedicineDay}" name="takeMedicineDay" type="text">
									<small id="helpRole">请输入服药天数</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									有无不良反应
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required=""  value="${medication.untowardEffect}" name="untowardEffect" type="text">
									<small id="helpRole">请输入幼儿用药不良反应</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用药备注
								</label>
								<div class="am-u-sm-9">
									<%-- <textarea rows="" cols="50"  name="userAddress">${user.userAddress}</textarea> --%>
									<input id="roleName" required=""  value="${medication.remarks}" name="remarks" type="text">
									<small>请输入幼儿用药备注</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success"  value="保存" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="date/js/laydate.js"></script>
		<script type="text/javascript">
		
		var start = {
			    elem: '#start',
			    format: 'YYYY/MM/DD hh:mm:ss',
			    min: '2015/06/06', //设定最小日期为当前日期 
			    max: laydate.now(), //最大日期
			    istime: true,
			    istoday: false,
			    choose: function(datas){
			         end.min = datas; //开始日选好后，重置结束日的最小日期
			         end.start = datas //将结束日的初始值设定为开始日
			    }
			};

			var end = {
			    elem: '#end',
			    format: 'YYYY/MM/DD hh:mm:ss',
			   /*  min: laydate.now(),  */
			    max: laydate.now(),
			    istime: true,
			    istoday: false,
			    choose: function(datas){
			        start.max = datas; //结束日选好后，充值开始日的最大日期
			    }
			};
			laydate(start);
			laydate(end);

		</script>
	</body>
</html>
