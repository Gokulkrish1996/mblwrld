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
<br>
<br>
<br>
<div class="container">
	<h2>ProductList</h2>
<table class="table table-hover" id="category" class="display" border="1" width="80" align="center">

<tr>
<th>Sr No.</th><th>PID</th><th>Name</th><th>Supplier</th><th>Category</th>
<th>Price</th><th style="width:15">Description</th>
</tr>
<c:if test="${empty productList }"><tr><td colspan="9" align="center">No record exist </td></tr>
</c:if>
<c:forEach var="c" varStatus="st" items="${productList }">
<tr>
<td><c:out value="${st.count }"></c:out></td>
<td><c:out value="${c.id }"></c:out></td>
<td><c:out value="${c.name }"></c:out></td>
<td><c:out value="${c.supplier.supplierName }"></c:out></td>
<td><c:out value="${c.category.catname }"></c:out></td>
<td><c:out value="${c.price }"></c:out></td>
<td class="span2">
<td><c:out value="${c.description }"></c:out></td>
<td><img src="${pageContext.request.contextPath }/resources/images/${product.productId}.jpg"  width="50px" height="50px" /></td>
<td class="span4">
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<a class="btn btn-info" role="button" href="<c:url value="/prodDetails/${c.id }"/>">Details</a>
	<a class="btn btn-info" role="button" href=""></a>	
</td>
</tr>
</c:forEach>
</table>
</div>

</body>
</html>