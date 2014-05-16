<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<html>
	<head>
		<link rel="stylesheet" href=<c:url value="/template/css/bootstrap.css"/>>
		<link rel="stylesheet" href=<c:url value="/template/css/font-awesome.min.css"/>>
		<link rel="stylesheet" href=<c:url value="/template/css/plugin.css"/>>
		<link rel="stylesheet" href=<c:url value="/template/css/font.css"/>>
		<link rel="stylesheet" href=<c:url value="/template/css/style.css"/>>
		<link rel="stylesheet" href=<c:url value="/template/css/landing.css"/>>
	</head>
	<body>
		<table>
			<tr>
				<th>ID</th>
				<th>firstName</th>
				<th>lastName</th>
				<th>age	</th>
				<th>email</th>
				<th>signDate</th>
			</tr>
			<c:forEach var="client" items="${clients}">
				<tr>
					<td>${client.id}</td>
					<td>${client.firstName}</td>
					<td>${client.lastName}</td>
					<td>${client.age}</td>
					<td>${client.email}</td>
					<td><fmt:formatDate value="${client.signDate}" pattern="dd/MM/yyyy"/></td>
					<td colspan="2">
						<security:authorize ifAllGranted="ROLE_ADMIN">
							<a href="delete.do?id=${client.id}">Delete</a>
							<a href="init.do?id=${client.id}">Update</a>
						</security:authorize>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-default" href="<c:url value="../j_spring_security_logout"/>">Disconnect</a>
	</body>
</html>


















