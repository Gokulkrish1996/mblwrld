<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
tr:hover{background-color:#f5f5f5}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>

<h2><i><font color="red"><center><b>PRODUCT LIST</b></center></font></i></h2>
 <form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">


	
	<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Product Stock</td>
	<td>Product Price</td>
	<td>CatId</td>
	<td>SupId</td> 
	<td>Photo</td>
	<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.supplierId}</td>
		<td>
		<a href="productDetails/${product.productId }">
		<img src="<c:url value="resources/images/${product.productId }.jpg"/>" width="50px" height="50px">
		</a>
		</td>
		
		<td>
			<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
		</td>
	</tr>
	
</c:forEach>

</table>
 </form:form> 

</body>
</html>