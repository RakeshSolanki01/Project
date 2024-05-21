<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <style type="text/css">
        body {
            background-color: #f7f3f3;
        }
        h1 {
			text-align: center;
            font-family: Arial, sans-serif;
        }
        table {
            width: 10%;
            margin: 30px auto;
           
        }
        table, th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            align:center;
            background-color: #f7f3f3;
        }
    </style>
    <title>Add Employee</title>
</head>
<body>
    <h1>Add New Employee</h1>
    <form action="${pageContext.request.contextPath}/employee/addEmployee" method="post" modelAttribute="employee">
        <table >
            <tr>
                <th><label for="name">Name:</label></th>
                <td><input type="text" id="name" name="name" placeholder="Enter Name" required></td>
            </tr>
            <tr>
                <th><label for="address">Address:</label></th>
                <td><input type="text" id="address" name="address" placeholder="Enter address" required></td>
            </tr>
            <tr>
                <th><label for="phone">Phone:</label></th>
                <td><input type="text" id="phone" name="phone" placeholder="Enter phone no." required></td>
            </tr>
            <tr>
                <th><label for="salary">Salary:</label></th>
                <td><input type="number" id="salary" name="salary" placeholder="Enter salary" required></td>
            </tr>
            <tr><th>
            <input  type="reset" value="Reset">
            </th>
            <td>
            <input  type="submit" value="Submit">
            </td></tr>
        </table>
        
    </form>
</body>
</html>