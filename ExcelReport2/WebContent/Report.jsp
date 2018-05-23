<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" 
    import="java.util.ArrayList"
    import="com.model.Employee"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<td>Id</td>
<td>First Name</td>
<td>Last Name</td>
<td>City</td>
<td>State</td>
</tr>
<%
response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition","inline; filename=employee.xls");
ArrayList<Employee> employees = (ArrayList<Employee>) session.getAttribute("employee");
for (Employee emp : employees) {
%>
<tr>
<td><%=emp.getId() %></td>
<td><%=emp.getFirstName() %></td>
<td><%=emp.getLastName() %></td>
<td><%=emp.getCity() %></td>
<td><%=emp.getState() %></td>
</tr>
<% }
session.setAttribute("employee", employees);
%>
</table>
</body>
</html>