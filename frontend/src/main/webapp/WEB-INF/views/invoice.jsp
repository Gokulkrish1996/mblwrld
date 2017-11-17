<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mobileworld</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="ClientHome.jsp"></jsp:include>

<div class="container">
	<form action="/ack" class="form-horizontal">
		<fieldset>
			<div class="form-group">
			<label class="col-sm-4 control-label" for="username">Customer Name</label>
			<div class="col-sm-4">
			<label class="col-sm-4 control-label" for="username">${userDetails.userName }</label>
		
			</div>
			</div>	
			
			<div class="form-group">
			<label class="col-sm-4 control-label" for="email">Customer Email</label>
			<div class="col-sm-4">
			<label class="col-sm-4 control-label" for="email">${userDetails.userEmail }</label>
		
			</div>
			</div>	
			
			<div class="form-group">
			<label class="col-sm-4 control-label" for="address">Customer Address</label>
			<div class="col-sm-4">
			<label class="col-sm-4 control-label" for="address">${userDetails.userAddress }</label>
		
			</div>
			</div>	
			
			<div class="form-group">
			<label class="col-sm-4 control-label" for="deliverydate">Delivery Date</label>
			<div class="col-sm-4">
			<label class="col-sm-4 control-label" for="deliverydate">Within  Working days.</label>
		
			</div>
			</div>	
			
			<div class="form-group">
			<label class="col-sm-4 control-label" for="submit"></label>
			<div class="col-sm-4">
			<button type="submit" name="checkoutclick" class="btn btn-lg">Place Order</button>
			</div>
			</div>	
			
			
		</fieldset>
	</form>

</div>
</body>
</html>