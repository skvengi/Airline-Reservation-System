<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Main Page</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link type="text/css" rel="stylesheet" href="mainStyle.css" />
</head>
<body>
<%
if(session.getAttribute("email")==null){
	response.sendRedirect("index.html");
}
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
  <br>
  <br>
  <div class="booking-form m-5" style="width: 40%" >
  	<form action="FlightCon" method="get">
		<div>
			<div class="form-group">
				<div class="row">
					<div class="col-sm-6">
						<span class="form-label">Source</span>
						<input class="form-control" type="text" placeholder="From" name="source" required>		
					</div>
					<div class="col-sm-6">
							<span class="form-label">Destination</span>
							<input class="form-control" type="text" placeholder="To" name="destination" required>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="form-group">
					<span class="form-label">Date</span>
					<input class="form-control" type="date" name="date" required>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8">
				<div class="form-group">
					<span class="form-label">Passenger(s)</span>
					<input class="form-control" type="number" min="0" placeholder="No. of Passenger" name="passenger" required="required">
				</div>
			</div>
		</div>
		<div class="form-btn">
			<button class="submit-btn">Check availability</button>
		</div>
	</form>
  	
  </div>

</body>
</html>