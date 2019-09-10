<%@page import="java.util.ArrayList"%>
<%@page import="model.TicketHistory"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>History</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="mainStyle.css" />
<style>
body{
	background-image: url("images\\12345.jpg")
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;}
	
form{ 
       margin: 100px;
       margin-left:300px;
       max-width: 800px;
       padding: 10px;
       background-color: rgba(0,0,0,0.1); 
       }
table{
    width: 500px;
	border-collapse: collapse;
	background-color: rgba(0,0,0,0.1);}
 
td,th{
	padding: 10px;
	background-color: rgba(255,255,255,0.2);
	color:white;
	}

select{
   background-color: rgba(255,255,255,0.2);
   }

input {
   background-color: rgba(255,255,255,0.2);
   height: 20px;	
}


</style>
</head>
<body>
<%
if(session.getAttribute("email")==null){
	response.sendRedirect("index.html");
}
List<TicketHistory> lh=(ArrayList<TicketHistory>)session.getAttribute("TicketHistory");

%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top text-dark" id="mainNav">
	    <div class="container">
	      <a class="navbar-brand" href="Main.jsp">Arise Airline</a>
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item">
	            <a class="nav-link js-scroll-trigger" href="HistoryCon">History</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link js-scroll-trigger" href="LogOutCon">Log Out</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link js-scroll-trigger" href="ProfileCon">Profile</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	</nav>
<form>
     
 <table align="center" >
     <h2 >History</h2> 

  <tr>
       
       <th>Filght No.</th>
       <th> Passenger Name</th>
       <th> Age</th>
       <th>Gender</th>
       
 </tr>
       <%for(int i=0;i<lh.size();i++) {%>
    <tr> 
	    <td><%=lh.get(i).getFlightNo() %></td>
	    <td><%=lh.get(i).getName() %></td>
	    <td><%=lh.get(i).getAge() %></td>
	    <td> <%=lh.get(i).getGender() %></td>
	        
   </tr>
   <%} %>
     
 
</table>
</form>
</body>
</html>