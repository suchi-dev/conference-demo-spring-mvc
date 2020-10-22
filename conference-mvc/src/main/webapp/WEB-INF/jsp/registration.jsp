<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>   
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<style>
	.error{
		color: #ff0000
	}
	
.errorblock{
	color: #000;
	background-color: #ffeeee;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;

}	

</style>
</head>
<body>
<h1><spring:message code="registration"/></h1>
<form:form modelAttribute="registration">
<form:errors path="*" cssClass="errorblock" element="div"/>
<table>
	<tr>
	<td><spring:message code ="name"/></td>
	<td><form:input path="name"/>
	</td>
	<td>
	<form:errors path="name" cssClass="error"/>
	</td>
	</tr>
	<tr>
	<td colspan="3">
	<input type ="submit" value="<spring:message code="save.changes"/>"/>
	</td>
	</tr>
</table>
</form:form>

</body>
</html>