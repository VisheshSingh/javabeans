<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Expression Language</title>
</head>
<body>
<h1>JSP - Expression Language Demo</h1>

<form action="EmployeeServlet" method="get">
	<label>Employee ID:</label>
	<input type="text" name="employeeID" /><br/><br/>
	<label>First Name:</label>
	<input type="text" name="firstName" /><br/><br/>
	<label>Last Name:</label>
	<input type="text" name="lastName" /><br/><br/>
	<label>Hourly Rate:</label>
	<input type="text" name="hourlyRate" /><br/><br/>
	<label>Hours worked:</label>
	<input type="text" name="hoursWorked" /><br/><br/>
	<input type="submit" value="submit" />
</form>
</body>
</html>