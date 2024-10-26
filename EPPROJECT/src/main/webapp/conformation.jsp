<!DOCTYPE html>
<html>
<head>
    <title>Confirmation</title>
</head>
<body>
    <h1>Confirmation</h1>
    <%-- Retrieve booking information from the request --%>
    <%
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String place = request.getParameter("place");
    String email = request.getParameter("email");
    double amount = Double.parseDouble(request.getParameter("amount"));
        String doj = request.getParameter("doj");
       
    %>

    <p>Thank you for your payment!</p>
    <p>Booking Details:</p>
    <p>Name: <%= name %></p>
    <p>Place: <%= place %></p>
    <p>Amount: <%= amount %></p>
    
</body>
</html>
