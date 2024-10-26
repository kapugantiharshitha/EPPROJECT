<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Employee" %>
    <%
    Employee emp = (Employee)session.getAttribute("emp");
    if(emp == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>
<body>

 <h2 align="center">Tourism Places</h2>
  <hr color="black"/><hr color="black"/>
  <br/>

<a href="emphome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="empprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="emplogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
<a href="booking.jsp">Payment</a>&nbsp;&nbsp;&nbsp;

<br>

<h3 align="center">WELCOME</h3>

Welcome <%=emp.getName()%>

 <img src="images/page14.jpeg"/>

</body>
</html>