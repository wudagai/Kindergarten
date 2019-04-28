<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Admin"
	import="com.kindergarten.entity.User"
	%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
	</head>
	<body>
		<div class="admin-content-body"style="" >
			<div class="am-cf am-padding am-padding-bottom-0" >
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">全体用药信息</strong><small></small></div>
			</div>
			<hr>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							
						</div>
					</div>
				</div>
			</div>
			<div class="am-g" style="margin-top: 5px;">
				<div class="am-u-sm-12">
					<form class="am-form" id="form3">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-id">
										<input id="chkAll" type="checkbox">
									</th>

									<th style="width: 120px; ">
										幼儿姓名
									</th>
									<th class="table-title" style="width: 120px; ">
										病症
									</th>
									<th style="width: 120px; ">
										发病时间
									</th>
									<th style="width: 120px; ">
										用药时间
									</th>
									<th style="width: 120px; ">
										服用药物
									</th>
									<th style="width: 120px; ">
										服药次数/天
									</th>
									<th style="width: 120px; ">
										服药方法
									</th>
									<th style="width: 120px; ">
										服药天数
									</th>
									<th style="width: 120px; ">
										有无不良反应
									</th>
									<th style="width: 120px; ">
										用药备注
									</th>
									<th class="table-title" style="width: 120px; ">
										操作
									</th>
								
									
								</tr>
							</thead>
							<tbody id="tUser">
							<c:forEach items="${childrenmedication.medications}" var="cm">  
								<tr>
									<td><input name="chks" value="701" type="checkbox"></td>
									<td>${childrenmedication.childrenName}</td>	
									<td>${cm.symptoms}</td>
									<td><f:formatDate value="${cm.sickTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
									<td><f:formatDate value="${cm.takeMedicineTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
									<td>${cm.medicine}</td>
									<td>${cm.frequency}</td>
									<td>${cm.means}</td>
									<td>${cm.takeMedicineDay}</td>
									<td>${cm.untowardEffect}</td>
									<td>${cm.remarks}</td>
									<td>
										<div class="am-btn-toolbar">
										
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="toexitMedication(${cm.medicationId})">编辑</span> </button>
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="removeMedication(${cm.medicationId})">删除</span> </button>
										</div>				
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						</form>
	           </div>
						
        
					<div class="tcdPageCode"></div>
				</div>
			</div>
		</div>

		</div>
		<!-- content end -->
		</div>
		</div>

		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
           function toexitMedication(u){
			
			location.href= "selectMedication.action?medicationId="+u;

			}
           function removeMedication(u){
   			
   			
   			if(confirm("确认删除吗")){
   				location.href= "removeMedication.action?medicationId="+u;
   				return true;
   			}
   			
   			}
		</script>
	</body>

</html>