<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page 
    import="java.util.*" 
    import="java.io.*"
    import="com.model.Employee"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<Employee> employees = new ArrayList(); 

String excelFile = "C:\\Project\\Excel\\employee.xls";


employees.add(new Employee(1, "Nancy", "Smith", "Denver", "CO"));
employees.add(new Employee(2, "John", "Smith", "Denver", "CO"));
employees.add(new Employee(3, "Randy", "Smith", "Denver", "CO"));
employees.add(new Employee(4, "Suren", "Smith", "Denver", "CO"));
employees.add(new Employee(5, "Dave", "Smith", "MPS", "MN"));
%>
<a href="Report.jsp">Generate Report</a>
<table>
<tr>
<td>Id</td>
<td>First Name</td>
<td>Last Name</td>
<td>City</td>
<td>State</td>
</tr>
<tr>
<%
for(Employee emp : employees) {
%>
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