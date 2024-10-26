<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Tourism Places</title>
 <style>
        /* Add some basic styles for the cards */
        .card {
            border: 1px solid #ccc;
            border-radius: 9px;
            padding: 16px;
            margin: 50px;
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
<body>

    
   <a href="index.jsf">Home</a>&nbsp;&nbsp;&nbsp;
  <a href="about.jsp">About Project</a>&nbsp;&nbsp;&nbsp;
 <a href="employeereg.jsp">Registration</a>&nbsp;&nbsp;&nbsp;
  <a href="employeelogin.jsp">Login</a>&nbsp;&nbsp;&nbsp;
  <a href="adminlogin.jsp">Admin Login</a>&nbsp;&nbsp;&nbsp;

    <h2 align="center"><u>Places To Visit GOA </u></h2>
  
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
    tourismPlaces.add(new TourismPlace("Dudhsagar Falls", "The nearest rail station accessible by road to the falls is Castle Rock, Uttara Kannada, Karnataka. Visitors could get in a train from here and disembark at the Dudhsagar stop. The Dudhsagar rail stop is not a station where passengers can expect a platform. Passengers and visitors have to climb down the steep ladder of the rail compartment in a short 1-2 minute unscheduled stop.", "page21.jpeg"));
    tourismPlaces.add(new TourismPlace("Aguada Fort", "Fort Aguada is a well-preserved seventeenth-century Portuguese fort, along with a lighthouse, standing in Goa, India, on Sinquerim Beach, overlooking the Arabian Sea. It is an ASI protected Monument of National Importance in Goa. ", "page22.jpeg"));
    tourismPlaces.add(new TourismPlace("Immaculate Conception Church", "Located in Panjim, Our Lady of Immaculate Conception is one of the most popular and also one of the oldest chapels in Goa. Built in a Portuguese Baroque style, the church is located on a slight elevation, on a hillock. It is known to house the second largest church bells in Goa.", "page23.jpeg"));
    tourismPlaces.add(new TourismPlace("Chapora Fort", "This ancient laterite fort on the Chapora river, although long since abandoned from a military standpoint, is nevertheless majestic and an enduring historical monument. Known for its spectacular views and sunset vistas, this is a popular spot for tourists to visit especially in the evenings.", "page24.jpeg"));
    tourismPlaces.add(new TourismPlace("Candolim Beach", "The Candolim Beach in Goa offers a peaceful environment but it also indulges tourists with many beach and water sport activities like snorkeling, fishing, and diving. Moreover there are many shaft bars that offer the local taste of Goa.", "page25.jpeg"));
    tourismPlaces.add(new TourismPlace("Harvalem Waterfalls", "The Arvalem Waterfall also known as Harvalem falls is a very scenic and beautiful picnic spot. This beautiful waterfall forms a huge lake at the bottom, which is much popular amongst the swimmers. The color of the waterfall becomes muddy brown in monsoon rains and the water flow is quite less in summer.", "page26.jpeg"));
  
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
         <button>PAYEMENT</button></a>
     
    
     

  
    
    </div>
     
    <%-- End loop --%>
    <% } %>
    
     
     
     
</body>
</html>