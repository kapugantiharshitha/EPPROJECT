<!DOCTYPE html>
<html>
<head>
    <title>Tourism Place Details</title>
</head>
<body>
    <h1>Tourism Place Details</h1>

    <%-- Retrieve the place name from the query parameter --%>
    <%
        String placeName = request.getParameter("place");
        // Here, you can retrieve more details about the selected place from your data source (e.g., database).
        // For this example, we will simply display the selected place name.
    %>

    <h2><%= placeName %></h2>
    <p>Additional details about <%= placeName %> will be displayed here.</p>
    
    <a href="topplaces.jsp">Back to Tourism Places</a>
</body>
</html>
