<%@page import="model.Flight"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html> 
<head><title>Transaction</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.nav-item{
	margin-left:50px;

}

th, td {

  font-weight: unset;
  padding-right: 10px;
}table{margin-top: 90px;
 width:60%;
 height:50%;
 margin-left:250px;
 border-collapse: collapse;
 }

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-image: url("images\\12345.jpg");
  background-repeat: no-repeat;
  background-size:100%;
  background-position: center;
  
}

.container tr:nth-child(odd) {
	  background-color: #323C50;
}
.container tr:nth-child(even) {
	  background-color: #2C3446;}
.container td:first-child,{ color: #FB667A; }


  
}
th{
color:dodgerblue;}

td{
text-align:center;}
input:hover{
background-color:green;}
</style>
</head> 
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top" id="mainNav">
	    <div class="container">
	      <a class="navbar-brand" href="Main.jsp">Arise Airline</a>
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item">
	            <a class="nav-link" href="HistoryCon">History</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link " href="LogOutCon">Logout</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	</nav>
<div>
<% 
List<Flight> lf=(ArrayList<Flight>)session.getAttribute("list");
%>

 <table class="container">
  <tr>
  
     <th>Flight Number</th>
     <th>Source</th>
     <th>Destination</th>
     <th>Arrival</th>
     <th>Departure</th>
     <th>Price</th>
     <th>Booking</th> 
       
     
     <% for(Flight f:lf){%>
    <tr> 
       <td> <%  out.print(f.getFlightNo()+" "); %></td>
       <td> <%= f.getSource()%></td>
       <td> <%= f.getDestination()%></td>
       <td> <%= f.getArrival()%></td>
       <td> <%= f.getDeparture()%></td>
       <td> Rs.<%= f.getPrice()%></td>
       <td><a href='UserCon?FlightNo=" + <%=f.getFlightNo()%> + "'>book</a></td>     
       
    </tr>
      <% } %>
  </tr>   
  
</table>
</div>
</body>  
</html>  
