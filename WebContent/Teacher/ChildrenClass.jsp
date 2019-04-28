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
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">班级详情</strong><small></small></div>
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
										幼儿图片
									</th>
                                       <th style="width: 120px; ">
										幼儿编号
									</th>
									<th class="table-title" style="width: 120px; ">
										姓名
									</th>
									<th class="table-title" style="width: 120px; ">
										出生日期
									</th>
								   <th class="table-title" style="width: 120px; ">
										入园日期
									</th>
									<th class="table-set" style="width: 300px; ">
										操作
									</th>
									
									
								</tr>
							</thead>
							<tbody id="tUser">
							<c:forEach items="${classinfo.childrens}" var="ul">
								<tr>
				                   <td>
									<c:if test="${ul.childrenPhoto!=null}">
                                      <img id="images" width="100px" height="100px" src="${pageContext.request.contextPath}/${ul.childrenPhoto}"/>
                                       </c:if>
                                         </td>
									<td>${ul.childrenId}</td>
									<td>${ul.childrenName}</td>
									<td><f:formatDate value="${ul.birthday}" pattern="yyyy/MM/dd"/></td>
									<td><f:formatDate value="${ul.enterDate}" pattern="yyyy/MM/dd"/></td>
									<td>
										<div class="am-btn-toolbar">
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="examination(${ul.childrenId})">体检详情</span> </button>
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="medication(${ul.childrenId})">用药详情</span> </button>
		                                <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-pencil-square-o" onclick="childreninfo(${ul.childrenId})">幼儿详情</span> </button>
		                               
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

		<script src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
		
			function examination(u){
				
				location.href="selectExaminationByChildren.action?childrenId="+u;
				
				
					}
			function medication(u){
				
				location.href= "selectMedicationByChildren.action?childrenId="+u;

				}
            function childreninfo(u){
				
				location.href= "selectChildrenById.action?childrenId="+u;

				}
    
		</script>
	</body>

</html>