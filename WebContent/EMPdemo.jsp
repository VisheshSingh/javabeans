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

<hr/>
<h2>Using the Map</h2>
Tax Data:<br/>
	<table border="2">
		<tr>
			<td>Georgia:</td>
			<td>${taxes.Georgia}</td>
		</tr>
		
		<tr>
			<td>Florida:</td>
			<td>${taxes.Florida}</td>
		</tr>
		
		<tr>
			<td>Texas:</td>
			<td>${taxes.Texas}</td>
		</tr>
	</table>

<hr/>
<h2>Calculations:</h2>
<p>
10C = ${(9.0/5.0)*10 + 32.0} F
</p>

<h2>An expression language - if statement</h2>
10 is an ${10 mod 2 == 0 ? "even" : "odd"} number.

<hr/>
<h2>Using implicit JSP objects</h2>
<h3>Check to see if hours worked is empty:</h3>
 ${empty param.hoursWorked }
<h3>Check combined with EL - if stmts:</h3> 
 ${empty param.hoursWorked ? "Please enter hours worked" : "Thanks for entering hours worked" }
<h3>Using param and math operations:</h3>
Employee compensation: ${employee.hourlyRate * param.hoursWorked }
<h3>Using header to get host information:</h3>
${header.host}
</body>
</html>