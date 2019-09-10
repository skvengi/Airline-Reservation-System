<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
<title>Profile</title>
</head>
<style>
.nav-item{
	margin-left:50px;

}
 body{
	font-weight: 100;
	background-image:url("images\\t.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center; 
  }
	
form{ 
       margin: 150px;
       margin-left:400px;
	   
       max-width: 500px;
       padding: 10px;
       
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	opacity:0.9;
       }
table{
    width: 400px;
	
	}
 
td,th{
	padding: 10px;
	background-color: rgba(255,255,255,0.2);
	font-size:20px;
	font-family:"Times New Roman", Times, serif;
	
	}



 

</style>
<body>
<%
User user=(User)session.getAttribute("user");
%>
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
	          <li class="nav-item">
	            <a class="nav-link" href="#contact" class="active">Profile</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	</nav>
	<nav style="margin-top: 100px ">
  <form>
 <table align="center" >
     <h2 >Profile</h2> 

  <tr>
 
    
    <tr> 
    
	    <tr> <td><b> Name : <%=user.getName() %></b></td></tr>
	    <tr><td><b> Email : <%=user.getEmail() %></b></td></tr>
	    <tr><td><b> Mobile: <%=user.getMobile() %></b></td></tr>
	    
	</tr>
   </tr>
      
 
</table>
</form>

</body>
</html>