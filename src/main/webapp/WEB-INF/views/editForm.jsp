<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
td  {
    
	padding: 15px;
}
.tg td {

font-family:Arial, sans-serif;
font-size:15px;

}


h4 a{
  font-size:18px;
  font-family:Arial, sans-serif;
  font-weight:normal;
}

h1{
font-family:Arial, sans-serif;
}

body {
	background-color: rgba(251, 251, 251, 0.985);
}

input:focus, input:active {
	border-color: transparent;
	border-bottom: 2px solid #1c87c9;
}

.form-submit-button {
background:#1c87c9;
color:black;
border-style: groove;
border-color:rgb(10, 9, 4);
height: 40px;
width: 100px;
font:italic;;
text-shadow: none;
border-radius: 4px;
}

</style>

<title>Edit Employee</title>
</head>
<body>


	<div align="center">
		<h1 align="center">Update Employee</h1>
		
		<hr>
      <form:form action="${pageContext.request.contextPath}/employee/addEmployee" method="POST" modelAttribute="employee">
		
			<table border="1">


				<tr>

					<td><label for="id">Employee ID:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="id" name="id"
						value="${employee.id}"></td>
				</tr>



				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="name"
						value="${employee.name}"></td>
				</tr>



				<tr>

					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="address"
						value="${employee.address}"></td>

				</tr>



				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="phone"
						value="${employee.phone}"></td>
				</tr>


				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="salary"
						value="${employee.salary}"></td>
				</tr>
			</table>


			<br>
			<br>

			<input class="form-submit-button" type="reset" value="Reset"> &nbsp;&nbsp;&nbsp; 
		 <input class="form-submit-button" type="submit" value="Submit">
		</form:form>
	
	</div>

</body>
</html>