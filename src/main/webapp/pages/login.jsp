<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
		<form action="../j_spring_security_check" method="POST">
			 <fieldset>
			  <label for="user"> User: </label>
			 <input type="text" class="form-control" name="j_username" placeholder="User"/>
			 <label for="password"> Password: </label>
			 <input type="password" class="form-control" name="j_password" placeholder="Password"/>
			 <input type="submit" class="btn btn-info" value="Login"/>
			 </fieldset>
 		</form>
	</body>
</html>


















