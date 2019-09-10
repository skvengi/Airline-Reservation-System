<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SignUp</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 <style>

	div{
	}	
	.container{
	   right: 0;
	   
       margin: 60px;
       max-width: 400px;
       padding: 20px;
       color:white;
       background-color:#115E7A;
  
}}

form{
float:right;
margin:100px;
max-height:100px;}
body{
background-image:url("p.jpg");}
input{
color:blue;}
body{
background-image:url("images\\z1.jpeg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; 
}



 </style>
 </head>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
  

 
 <body>
<div class="container" >
<form action="SignUpCon" method="get">
   <h2 > Sign Up</h2> 
   
   <label for="name"></label>  
   <input type="name" class="form-control" name="name" placeholder="Your Name" required="required">  
     
    <label for="mobile"></label>  
    <input type="mobile" class="form-control" name="mobile" placeholder="Mobile" required="required">  
	 
    <label for="Email1"></label>  
    <input type="email" class="form-control" name="email1" placeholder="Email" required="required">  
    
	<label for="Password"></label>  
    <input type="Password" class="form-control" name="password" placeholder="Password" required="required">  
   
   <label for="psw"></label>  
   <input type="Password" class="form-control" name="psw" placeholder="Conform Password" required="required"> 
     <label for="button" ></label><br>
    <button type="submit" class="btn btn-default">SignUp</button> 
  </form>
  </div>



</body></html>