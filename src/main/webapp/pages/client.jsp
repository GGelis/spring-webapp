<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body>
		<form:form action="save.do" commandName="client" method="POST">
		
			<form:hidden name="id" path="id"/>
			
			<div>
				<form:errors path="*"/>
			</div>
			
			<form:label path="firstName">firstName</form:label>
			<form:input name="firstName" path="firstName"/>
			
			<form:label path="lastName">lastName</form:label>
			<form:input name="lastName" path="lastName"/>
			
			<form:label path="age">age</form:label>
			<form:input name="age" path="age"/>
			
			<form:label path="email">email</form:label>
			<form:input name="email" path="email"/>
			
			<form:label path="signDate">signDate</form:label>
			<form:input name="signDate" path="signDate"/>
			
			<input class="fa-spin" type="submit" value="Validate"/>
			
		</form:form>
	</body>
</html>


















