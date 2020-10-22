<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>   
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
</head>
<body>
<h1><spring:message code="registration"/></h1>
<form:form modelAttribute="registration">
<table>
	<tr>
	<td><spring:message code ="name"/></td>
	<td><form:input path="name"/>
	</td>
	</tr>
	<tr>
	<td colspan="2">
	<input type ="submit" value="<spring:message code="save.changes"/>"/>
	</td>
	</tr>
</table>
</form:form>

</body>
</html>