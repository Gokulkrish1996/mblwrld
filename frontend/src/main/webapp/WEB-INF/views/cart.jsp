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
<style type="text/css">
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 75%;
}

th, td {
    padding: 25px;
}
tr:hover{background-color:#f5f5f5}
.modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
}

</style>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<br>
<br>
<br>
<div class="container">
<h4><img alt="" src="${pageContext.request.contextPath}/resources/cart.png">&nbsp; My Cart</h4>
<table id="cart" class="table table-hover table-condensed">
<thead>
<tr>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Image</th>
<th>Total</th>
<th>Action</th>
</tr>
</thead>

<tbody>
<c:if test="${empty cartInfo}">
<tr><td colspan="7" align="center">No Record Exists</td></tr>
</c:if>

<c:forEach var="v" varStatus="st" items="${cartInfo}">
<tr>
<td><c:out value="${c.cartProdName}"></c:out></td>
<td><c:out value="${c.cartQnty}"></c:out></td>
<td><c:out value="${c.cartPrice}"></c:out></td>

<td><img src="${pageContext.request.contextPath}/resources/views/<c:out value="${c.cartImg}"></c:out>"/></td>

<td><c:out value="${c.cartQnty*c.cartPrice}"></c:out></td>
<td><a href="${pageContext.request.contextPath}/deletePCart/${c.cartID}" class="btn btn-lg btn-danger"><i class="fa fa-trash="></i> </a><c:out value="${c.cartProdName}"></c:out></td>
<c:set var="gtot" value="${gtot + c.cartPrice * c.cartQnty}"></c:set>
</tr>
</c:forEach>
<tr>
<td><span class="col-lg-7" align="right"><label>Grant Total</label><c:out value="${gtot}"></c:out></span></td>
</tr>
</tbody>
<tr>
<td><a href="userHome" class="btn btn-warning">Continue Shopping</a></td>

<c:if test="${not empty cartInfo}">
<td><a href="${pageContext.request.contextPath}/checkout" class="btn btn-success">Checkout</a></td>
</c:if>
</tr>
</table>
</div>
</body>
</html>