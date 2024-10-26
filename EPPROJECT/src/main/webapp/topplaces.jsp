<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
<head>
    <title>Tourism Places</title>
    <style>
        /* Add some basic styles for the cards */
        .card {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 16px;
            margin: 16px;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            vertical-align: top;
             background-color: lavender;
        }

        .card img {
            width: 100%;
            border-radius: 8px;
        }

        .card button {
            display: block;
            margin-top: 16px;
        }
    </style>
</head>
<body class="topplaces-page">
  
   <a href="index.jsf">Home</a>&nbsp;&nbsp;&nbsp;
  <a href="about.jsp">About Project</a>&nbsp;&nbsp;&nbsp;
 <a href="employeereg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;
  <a href="employeelogin.jsp">Login</a>&nbsp;&nbsp;&nbsp;
  <a href="adminlogin.jsp">Admin Login</a>&nbsp;&nbsp;&nbsp;

    <h2 align="center"><u>Places To Visit </u></h2>
    

    <%-- Sample data for tourism places --%>
    <%
        // Define a class to represent a tourism place
        class TourismPlace {
            private String name;
            private String description;
            private String imageName;

            public TourismPlace(String name, String description, String imageName) {
                this.name = name;
                this.description = description;
                this.imageName = imageName;
            }

            public String getName() {
                return name;
            }

            public String getDescription() {
                return description;
            }

            public String getImageName() {
                return imageName;
            }
        }

    // Sample data for tourism places
    
    List<TourismPlace> tourismPlaces = new ArrayList<>();
    tourismPlaces.add(new TourismPlace("GOA", "per day:1000<br><br>per week:7000<br><br>2 week:14000", "page15.jpeg"));
 
    tourismPlaces.add(new TourismPlace("SINGAPUR", "per day:1000<br><br>per week:7000<br><br>2 week:14000", "page16.jpeg"));
    tourismPlaces.add(new TourismPlace("PARIS", "per day:5000<br><br>per week:20000<br><br>2 weeks:30000", "page17.jpeg"));
    tourismPlaces.add(new TourismPlace("HYDERABAD", "per day:5000<br><br>per week:20000<br><br>2 weeks:30000", "page18.jpeg"));
    tourismPlaces.add(new TourismPlace("MALDIVES", "per day:5000<br><br>per week:20000<br><br>2 weeks:30000", "page19.jpeg"));
    tourismPlaces.add(new TourismPlace("BANGKOK", "per day:5000<br><br>per week:20000<br><br>2 weeks:30000", "page20.jpeg"));
    %>

    <%-- Loop through the tourismPlaces list and create cards for each place --%>
    <%
        String imagesDirectory = "images/"; // Directory where the images are stored
        for (TourismPlace place : tourismPlaces) {
    %>
    <div class="card">
        <h2><%= place.getName() %></h2>
        <img src="<%= request.getContextPath() + "/" + imagesDirectory + place.getImageName() %>"
            alt="<%= place.getName() %>">
        <p><%= place.getDescription() %></p>
        
         
          <a href="goa.jsp?place=<%= place.getName() %>"><button>Read More</button></a>
        
    
    </div>
    <%-- End loop --%>
    <% } %>
</body>
</html>
