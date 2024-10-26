<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.EmployeeService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Employee"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
</head>
<body>
    <h1>Payment</h1>
    <%-- Retrieve booking information from the request --%>
    <%
        String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String place = request.getParameter("place");
    String email = request.getParameter("email");
    double amount = Double.parseDouble(request.getParameter("amount"));
        String doj = request.getParameter("doj");
       
       
        //String pwd = request.getParameter("pwd");
        String contact = request.getParameter("contact");

       
        
    %>

    <p>Booking Details:</p>
    <p>Name: <%= name %></p>
    <p>Gender: <%= gender %></p>
    <p>Place: <%= place %></p>
    <p>Email: <%= email %></p>
    <p>Doj: <%= doj %></p>
    <p>AMOUNT: <%= amount %></p>
    <p>contact: <%= contact %></p>
   

    <%-- Simulate a payment confirmation --%>
    <form action="confirmation.jsp" method="get">
        <input type="hidden" name="name" value="<%= name %>">
        <input type="hidden" name="destination" value="<%= place %>">
        
        <input type="hidden" name="amount" value="<%= email %>">
        
        <input type="hidden" name="amount" value="<%= doj %>">
        
        <input type="hidden" name="amount" value="<%= amount %>">
        
        <input type="hidden" name="amount" value="<%= contact %>">
        <input type="submit" value="Confirm Payment">
    </form>
</body>
</html>
