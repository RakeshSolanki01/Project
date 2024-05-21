<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
<style type="text/css">
		.ts  {width: 15%;
            margin: 35px auto;
            border: 2px solid black;}
		.ts td{text-align:center; font-family: Georgia, serif; font-size:15px;padding:8px 6px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#0f0a0a;color:#11120a;background-color: #a5c300;}
		.ts th{font-family:Arial, sans-serif;font-size:15px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#111010;color:#0b0b09;background-color: #a5c300;}
	
		body  {
        background: #bae498; 
        margin: 0;
      }
		h4 a {font-family:Arial, sans-serif;font-size:15px; color:#1c0757 ;font-weight:normal; }
		h1,h3 {font-family:Arial, sans-serif;}
	</style>
</head>
<body>
<h1 align="center">Employee List</h1>


<c:if test="${!empty listEmployee}">
	<h4 align="center"><a href="add">Add new Employee</a></h4>
	<table class="ts">
	
	<tr>
		<th width="75">Employee ID</th>
		<th width="75">Employee Name</th>
		<th width="75">Employee Address</th>
		<th width="75">Employee Phone</th>
		<th width="75">Employee Salary</th>  
		<th width="75">Update</th>
		<th width="75">Delete</th>
	</tr>
	<c:forEach items="${listEmployee}" var="employee">
		<tr>
			<td>${employee.id}</td>
			<td>${employee.name}</td>
			<td>${employee.address}</td>
			<td>${employee.phone}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/employee/edit/${employee.id}' />" >Update</a></td>
            <td><a href="<c:url value='/employee/remove/${employee.id}' />" >Delete</a></td>

		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>