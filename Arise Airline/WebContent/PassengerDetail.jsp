<%@page import="model.TicketDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>PassengerDetail</title>
<style>
.nav-item{
	margin-left:50px;

}
body{
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
	background-image: url("images\\x.jpg");
    background-repeat: no-repeat;
    background-size:100%;
    background-position: center;}
	
form{ 
       margin: 100px;
       margin-left:300px;
       max-width: 700px;
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
	            <a class="nav-link" href="ProfileCon" class="active">Profile</a>
	          </li>
	        </ul>
	      </div>
	    </div>
	</nav>
<%
if(session.getAttribute("email")==null){
	response.sendRedirect("index.html");
}
TicketDetail ti= (TicketDetail)session.getAttribute("ticket");
%>
<form action="PassengerCon" method="post">
 <table align="center">
     <h2 >Passenger Detail</h2> 

  <tr>
       <th>SNo</th>
       <th> Passenger Name</th>
       <th> Age</th>
       <th>Gender</th>
 
       <% for(int i=0;i<ti.getpNo();i++){%>
    <tr> 
        <td align="center" width="10%"><% out.print((i+1)+"."); %>
	    <td><input type="text" name="name<%=i%>" required="required" ></td>
	    <td><input type="text" name="age<%=i%>" required="required"></td>
	    <td> 
	        <select value="gender" name="gender<%=i%>"required="required">
	          <option>select</option>
	          <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Trans">Transgender</option>
            </select>
	    </td>
	</tr>
   </tr>
      <% } %>
 
</table>
<input type="submit" value="Book">
</form>
</body>
</html>