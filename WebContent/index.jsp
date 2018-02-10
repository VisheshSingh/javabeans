<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="employee" class="model.EmployeeBean" scope="session" />
<jsp:setProperty name="employee" property="firstName" value="Harvey"/>
<jsp:setProperty name="employee" property="lastName" value="Spectre"/>
<jsp:setProperty name="employee" property="hourlyRate" value="65.00"/>
<jsp:setProperty name="employee" property="startDate" value="2000"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Bean Demo</title>
</head>
<body>
<h1>Employee Bean</h1>

Employee Data:<br/>
	<table border="2">
		<tr>
			<td>First Name:</td>
			<td><jsp:getProperty property="firstName" name="employee" /></td>
		</tr>
		
		<tr>
			<td>Last Name:</td>
			<td><jsp:getProperty property="lastName" name="employee" /></td>
		</tr>
		
		<tr>
			<td>Pay Rate:</td>
			<td><jsp:getProperty property="hourlyRate" name="employee" /></td>
		</tr>
		
		<tr>
			<td>Start year:</td>
			<td><jsp:getProperty property="startDate" name="employee" /></td>
		</tr>
	</table>
</body>
</html>