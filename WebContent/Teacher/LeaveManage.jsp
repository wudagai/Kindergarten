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
									
									<th style="width: 120px; ">
										体检编号
									</th>
									<th style="width: 120px; ">
										请假类型
									</th>
									<th style="width: 120px; ">
										请假开始时间
									</th>
									<th style="width: 120px; ">
										请假结束时间
									</th>
									<th style="width: 120px; ">
										请假原因
									</th>
									
									<th class="table-title" style="width: 120px; ">
										操作
									</th>
									<th class="table-title" style="width: 120px; ">
										请假结果
									</th>
								
									
								</tr>
							</thead>
							<tbody id="tUser">
							 <c:forEach items="${children.childrenleaves}" var="cl">
								
								<tr>
								     <td>${cl.leaveId}</td>
									<td>${cl.leaveType}</td>
									<td><f:formatDate value="${cl.leaveStart}" pattern="yyyy/MM/dd"/></td>
									<td><f:formatDate value="${cl.leaveEnd}" pattern="yyyy/MM/dd"/></td>
									<td>${cl.leaveReason}</td>
									
									<td>
										<div class="am-btn-toolbar">
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="removeleave(${cl.leaveId})">刪除</span> </button>	
										</div>				
									</td>
									<td>
									<div class="am-btn-toolbar">
				<c:choose> 
				<c:when test="${cl.leaveState==0}"> 	
					<button type="button" class="but" onclick="editLeaveOne(${cl.leaveId})">未审核</button>
				</c:when>
				<c:when test="${cl.leaveState==1}"> 	
					<button type="button" class="but" onclick="editLeaveTwo(${cl.leaveId})">批准</button>
				</c:when>
				<c:otherwise>
				   <button type="button" class="bu" onclick="editLeaveOne(${cl.leaveId})">不批准</button>
					<button type="button" class="but" style="display:none;" >未审核</button>
				</c:otherwise>	
					
			</c:choose> 
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
          function editLeaveOne(u){
   			
   			location.href= "editLeaveOne.action?leaveId="+u;

   			}
          function editLeaveTwo(u){
     			
     			location.href= "editLeaveTwo.action?leaveId="+u;

     			}
           function removeleave(u){

      			if(confirm("确认删除吗")){
      				location.href= "removeleave.action?leaveId="+u;
      				return true;
      			}
   			

   			}
		</script>
	</body>

</html>