<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Data</title>
</head>
<body>
<h1>Employee Data:</h1>
<hr/>

<h2>Using the employee bean</h2>
Employee ID: ${employee.employeeID }<br/>
Employee Name: ${sessionScope.employee.firstName } ${sessionScope.employee.lastName }<br/>
Hourly Rate: ${employee["hourlyRate"] }<br/>
</body>
</html>