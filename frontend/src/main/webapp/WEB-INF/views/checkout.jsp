<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobileworld</title>
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
<div class="row">
	<div class="col-sm-9 jumbotron">
	<div class="head">
	<h2><p class="myText">Customer Shipping Details</p></h2>
	</div>
	
	<div class="outer">
		<div class="well" style="width:100%">
		<form action="${pageContext.request.contextPath }/invoiceProcess" method="post">
		<c:set var="gtot" value="0"></c:set>
		<c:forEach var="c" items="${cart }">
		<c:set var="gtot" value="${gtot+cart.price * cart.quantity}">
		</c:set>
		</c:forEach>
		
		<div class="well">
		<table>
		<tr>
		<td colspan="3"><b>Name:</b></td>
		<td>${user.userName }</td>
		</tr>
		
		<tr>
		<td colspan="3"><b>Email:</b></td>
		<td>${user.userEmail }</td>
		</tr>
		<tr>
		<td colspan="3"><b>Customer Address:</b></td>
		<td>${user.userAddress }</td>
		</tr>
		
		<tr>
		<td colspan="3"><b>Total amount payable:</b></td>
		<td>${gtot }</td>
		</tr>
		</table>
		</div>
		<br><br><br>
		<div style="margin-top:15px">
		<h3><strong>Enter Card Details</strong></h3>
		</div>
		<input type="hidden" name="total" value="${gtot }">
	<br>
		<select name="payment">
		<option value="COD">Cash On Delivery</option>
		<option value="NB">Net Banking</option>
		<option value="DrCr">Debit or Credit Card</option>
		</select>		
		<br><br>
		<input type="number" name="cardnum" placeholder="Enter card Number...">
		<input type="text" name="cardname" placeholder="Enter your name">
		<table>
		<tr>
			<th colspan="2">Expiry Date</th>
			<th>&nbsp;&nbsp;&nbsp;</th>
			<th>CVV</th>
		</tr>
		
		<tr><td colspan="2"><input type="number" min="1" max="12" name="month" placeholder="MM"></tr>
		<tr><td colspan="2"><input type="number" min="1" max="99" name="YY" placeholder="YY"></tr>
		<td>&nbsp;&nbsp;&nbsp;</td>
		<tr><td colspan="2"><input type="password" min="1" max="999" name="CVV" placeholder="MM"></tr>
		
		</table>
		<input type="submit" value="PROCEDD" class="btn btn-success">
		
		</form>
		</div>
	
	</div>
	
	</div>
</div>

</div>
</body>
</html>