<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.kindergarten.entity.Children"
	%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<%-- <%
User user =(User)session.getAttribute("user");
%> --%>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
*{ margin:0; padding:0; list-style:none;}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{padding: 15px 20px;text-align: left;color: #ccc;text-align:center;}
.tcdPageCode a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #428bca;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
</style>
		<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
	</head>
	<body>
		<div class="admin-content-body"style="" >
			<div class="am-cf am-padding am-padding-bottom-0" >
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">幼儿管理</strong><small></small></div>
			</div>
			<hr>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default btnAdd">
									<span class="am-icon-plus"></span> 
									</button>
						</div>
					</div>
				</div>
				<form method="post" action="selectChildrenByIf.action" id="form2">
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm"> 
						<input id="roleName" class="am-form-field" name="childrenName" placeholder="请输入幼儿名称" type="text">
						<span class="am-input-group-btn">
								 </span>
					</div> 
					<div class="am-input-group am-input-group-sm"> 
						<input id="roleName" class="am-form-field"  name="classinfos.className" placeholder="请输入班级名" type="text">
						<span class="am-input-group-btn">
									<button class="am-btn am-btn-default" type="submit" id="btnsearch">
										搜索
									</button> </span>
					</div> 
				</div>
				</form>
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
										学号
									</th>
									<th class="table-title" style="width: 120px; ">
										姓名
									</th>
									<th class="table-title" style="width: 120px; ">
										班级
									</th>
									<th class="table-title" style="width: 120px; ">
										出生日期
									</th>
								   <th class="table-title" style="width: 120px; ">
										入园日期
									</th>
								   <th class="table-title" style="width: 120px; ">
							                  班主任
									</th>

									<th class="table-set" style="width: 200px; ">
										操作
									</th>
									
								</tr>
							</thead>
							<tbody id="tUser">
							<c:forEach items="${subChildrenlist}" var="ul">
								<tr>
									<td><input name="chks" value="701" type="checkbox"></td>
									<td>${ul.childrenId}</td>
									<td>${ul.childrenName}</td>
									 <td>${ul.classinfos.className}</td> 
									<td><f:formatDate value="${ul.birthday}" pattern="yyyy/MM/dd"/></td>
									<td><f:formatDate value="${ul.enterDate}" pattern="yyyy/MM/dd"/></td>
									<td>${ul.classinfos.teacher.teacherName}</td>
									
									<td>
										<div class="am-btn-toolbar">
										<div class="am-btn-group am-btn-group-xs"><button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"  onclick="editChildren("${ul.childrenId}")></span> 编辑</button>
										<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" ><span class="am-icon-trash-o" onclick="deleteDepart(${ul.childrenId})"> 删除</span></button></div>

										<!-- <button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"> <span class="am-icon-copy"></span> 分配权限</button>-->
										<!-- onclick="deleteDepart(14,1)" -->
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
				                     <a href="selectAllChildren.action?pageNum=${pageNum}">${pageNum}</a>
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
		<!-- content end -->
		</div>
		</div>

		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<!-- <script src="fenye/js/jquery-1.8.3.min.js"></script> -->
           <script src="fenye/js/jquery.page.js"></script>
		<script>
		
			function deleteDepart(u){
				if(confirm("确认删除吗")){
					location.href="removeChildren.action?childrenId="+u;
						return true;
					}
				
				
				
			}
			
		
		</script>
	</body>

</html>