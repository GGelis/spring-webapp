<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
	<head>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
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
						<a href="delete.do?id=${client.id}">Delete</a>
						<a href="init.do?id=${client.id}">Update</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>


















