<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	.bu {
	 background-color: #80ff00;
	 border-radius: 4px;
	 font-size: 15px;
    color: black; 
      }
    .but {
	 background-color: #ff8040;
	 border-radius: 4px;
	 font-size: 15px;
     color: black; 
     }

    .butt {
	 background-color: #ff0000;
	 border-radius: 4px;
	 font-size: 15px;
    color: black; 
     }
	
	</style>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
</head>
	<body>
		<div class="admin-content-body"style="" >
			<div class="am-cf am-padding am-padding-bottom-0" >
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">报名信息管理</strong><small></small></div>
			</div>
			<hr>
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
										报名号
									</th>
									<th class="table-title" style="width: 100px; ">
										姓名
									</th>
									<th class="table-title" style="width: 100px; ">
										报名班级
									</th>
									<th class="table-title" style="width: 100px; ">
										出生日期
									</th>

									<th class="table-set" style="width: 100px; ">
										操作
									</th>
									<th class="table-set" style="width: 100px; ">
										审核结果
									</th>
									
								</tr>
							</thead>
							<tbody id="tUser">
							<c:forEach items="${subApplelist}" var="ul">
								<tr>
									<td><input name="chks" value="701" type="checkbox"></td>
									<td>${ul.childrenId}</td>
									<td>${ul.childrenName}</td>
									 <td>${ul.classinfos.className}</td> 
									<td><f:formatDate value="${ul.birthday}" pattern="yyyy/MM/dd"/></td>
									
									<td>
										<div class="am-btn-toolbar">
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-trash-o" onclick="deleteApple(${ul.childrenId})"> 删除</span></button>
										</div>
										
									</td>
									<td>
										<div class="am-btn-toolbar">
				<c:choose> 
				<c:when test="${ul.childrenStat==0}"> 	
					<button type="button" class="but" onclick="editAppleOne(${ul.childrenId})">未审核</button>
				</c:when>
				<c:when test="${ul.childrenStat==1}"> 	
					<button type="button" class="but" onclick="editAppleTwo(${ul.childrenId})">通过</button>
				</c:when>
				<c:otherwise>
				   <button type="button" class="bu" onclick="editAppleOne(${ul.childrenId})">拒绝通过</button>
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
						
                 <div class="am-cf">
							共 ${pu.rowCount} 条记录 |    总页数： ${pu.pageCount}   |   当前页码：  ${pu.pageNum}
							<div class="am-fr">
								<ul class="am-pagination">
									<!-- <li class="am-disabled">
										<a href="#">«</a>
									</li> -->
									<c:forEach begin="1" end="${pu.pageCount}"  var="pageNum">
									<li>
				                     <a href="selectAllApple.action?pageNum=${pageNum}">${pageNum}</a>
				                     </li>
		                           </c:forEach>
									<li>
										<a href="#">»</a>
									</li>
								</ul>
							</div>
						</div> 
					<div class="tcdPageCode"></div>
				</div>
			</div>
		</div>

		</div>
		</div>
		</div>

		<script src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
           <script src="fenye/js/jquery.page.js"></script>
         <script>
         function deleteApple(u){
        	 if(confirm("确认删除吗")){
        		 location.href="removeApple.action?childrenId="+u;
						return true;
					}
				
				
				
			}
         function editAppleOne(u){
				location.href="editAppleOne.action?childrenId="+u;
				
			}
         function editAppleTwo(u){
				location.href="editAppleTwo.action?childrenId="+u;
				
			}
         </script> 
           
	</body>

</html>