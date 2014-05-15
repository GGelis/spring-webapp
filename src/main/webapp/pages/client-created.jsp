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
		<div>
			<label>ID : </label>
			<p>${client.id}</p>
			<br>
			<label>firstName : </label>
			<p>${client.firstName}</p>
			<br>
			<label>lastName : </label>
			<p>${client.lastName}</p>
			<br>
			<label>age : </label>
			<p>${client.age}</p>
			<br>
			<label>email : </label>
			<p>${client.email}</p>
			<br>
			<label>signDate : </label>
			<p><fmt:formatDate value="${client.signDate}" pattern="dd/MM/yyyy"/></p>
		</div>
	</body>
</html>


















