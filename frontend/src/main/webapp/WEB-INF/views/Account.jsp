<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<br>
<br>
<br>

<div class="container">
<div class="jumbotron">
<h1>Account</h1>

<table>

	<tr>
		<td>Name : ${user.userName}</td>
	</tr>
	<tr>
		<td>Email-Id : ${user.userPassword}</td>
	</tr>
	<tr>
		<td>Phone : ${user.userPhone}</td>
	</tr>
	<tr>
		<td>Address : ${user.userAddress}</td>
	</tr>
	

</table>

	<br>
	<br>
	<center>
	<a href="<c:url value="updateUser/${user.userName}"/>"><i class="btn btn-lg btn-info">UPDATE</i></a>
	<!-- <button type="submit" class="btn btn-lg btn-info">Update</button> -->
	
	</center>
	
</div>


</div>

</body>
</html>