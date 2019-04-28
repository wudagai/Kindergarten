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
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">全体体检信息</strong><small></small></div>
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
										体检编号
									</th>
									<th class="table-title" style="width: 120px; ">
										体检日期
									</th>
									<th style="width: 120px; ">
										身高
									</th>
									<th style="width: 120px; ">
										听力
									</th>
									<th style="width: 120px; ">
										视力
									</th>
									<th style="width: 120px; ">
										牙齿数
									</th>
									<th style="width: 120px; ">
										传染性疾病调查
									</th>
									<th style="width: 120px; ">
										体检备注
									</th>
									<th class="table-title" style="width: 120px; ">
										操作
									</th>
								
									
								</tr>
							</thead>
							<tbody id="tUser">
							<c:forEach items="${examination.examinations}" var="cm">
								<tr>
									<td><input name="chks" value="701" type="checkbox"></td>
									<td>${cm.examinationId}</td>
									<td><f:formatDate  value="${cm.examinationDate}" pattern="yyyy/MM/dd" /></td>
									<td>${cm.hight}</td>
									<td>${cm.hearing}</td>
									<td>${cm.vision}</td>
									<td>${cm.teethNumber}</td>
									<td>${cm.infectiousDisease}</td>
									<td>${cm.remarks}</td>
									<td>
										<div class="am-btn-toolbar">
										
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="toexitExamin(${cm.examinationId})">编辑</span> </button>
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="removeExamin(${cm.examinationId})">刪除</span> </button>	
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
           function toexitExamin(u){
			
			location.href= "selectExamination.action?examinationId="+u;

			}
           
           function removeExamin(u){
        		if(confirm("确认删除吗")){
        			location.href= "removeExamination.action?examinationId="+u;
       				return true;
       			}
       			
   			

   			}
		</script>
	</body>

</html>