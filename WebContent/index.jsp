<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页信息</title>
<!-- 引入bootstarp的资源信息 -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/css/bootstrap.css">
<!-- 引入js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>用户编号</th>
				<th>用户名</th>
				<th>合作伙伴</th>
				<th>电话</th>
				<th>地址</th>
				<th>创建时间</th>
			</tr>
			<c:forEach items="${list }" var="u">
				<tr class="">
					<td>${u.proCode }</td>
					<td>${u.proName }</td>
					<td>${u.proDesc }</td>
					<td>${u.proPhone }</td>
					<td>${u.proAddress }</td>
					<td><fmt:formatDate value="${u.creationDate}" pattern="YYYY-MM-dd HH:mm:ss"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>