<%@page import="dao.FlightDao"%>
<%@page import="dao.UserDao"%>
<%@page import="model.TicketDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Payment</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<style>
	table{
	   align:center;}
	   body{
  background-image:url("images\\t.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; 
  background: 100%;
}
 form{
    max-width:500px;
   }
 
 .row {
         background: linear-gradient(45deg, #49a09d, #5f2c82);
		 max-width:500px;
		 margin: 0 -16px;
		 
		 }
.col-25,
.col-50{
  padding: 0 16px;
  margin-top:10px;
}

.container {
   margin-top:30px;
   opacity: 0.8;
   margin-left:150px;  
  
   }

input[type=text] {
  width: 100%;
  margin-bottom: 5px;
  padding: 12px;
  
  
}

label {
  margin-bottom: 10px;
  display: block;
}
	   

    </style>
</head>
<body style="background-image: url('images\\t.jpg');">
<%
if(session.getAttribute("email")==null){
	response.sendRedirect("index.html");
}
TicketDetail td=(TicketDetail)session.getAttribute("ticket");
int num=td.getpNo();
int price=new FlightDao().getPrice(td.getFlightNo());
%>
 <form action="TicketCon" method="post" style="margin-left: 500px ; margin-top: 50px">
   <div class="row">
          <div class="col-25">
            
		        <div class="row">
		          <div class="col-25">
			         <label for="card"  >
                <img src="images\\v.png" width="100" height="50"> <br> 
			          <input id="card" type="radio" name="payment" required>
                   <b style="margin-right:50px">Pay with credit card</b>
                 </label>
			       </div>
             <div class="col-25">
			       <label for="paypal"><
               <img src="images\\pay.png" width="100" height="50"><br>
               <input id="images\\paypal" type="radio" name="payment" required>
               <b> Pay with PayPal</b>
             </label>
             </div>
            </div>			 
             <label for="fname"><i class="fa fa-user"></i> <b>Cardholder's Name</b></label>
              <input  type="text" placeholder="Cardholder's Name" required></td>
             
			 <label for="fname"><i class="fa fa-kry"></i><b> Card Number</b></label>
              <input  type="text" placeholder="Card Number" required></td>
             			  
			  <div class="row">
              <div class="col-25">
                <label for="expyear"><b>VALID THRU</b></label>
                <input type="text" id="expyear" name="expyear" placeholder="MM/YY">
              </div>
              <div class="col-25">
                <label for="cvv"><b>CVV/CVC*</b></label>
                <input type="text" id="cvv" name="cvv" placeholder="CVV/CVC">
              </div>
            </div>   
           </div>
           <table align="center">
		<tr>
           <td><b>Total Price:</b><input type="text" name="price" value="Rs.<%=price*num %>"> </td>  
        </tr>
    
    </table>
		   <div class="col-50">
		      
              <input  type="button" style="margin-left:170px;margin-top:10px;margin-bottom:10px;width:100px;"  value="Payment" required></td>
			  </div>
    
  </div>
  </form>
</body>
</html>