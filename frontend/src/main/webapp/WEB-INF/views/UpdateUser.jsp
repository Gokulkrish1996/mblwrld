<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Register</h1>
<div class="col-lg-12">
<div class="row">


<form:form action="UpdateUser" modelAttribute="user" method="post"> 
<div class="col-lg-10">
	<div class="form-group">
	
	<label>User ID</label>
	<form:input path="userId" placeholder="Enter id..." class="form-control"/>
	
	</div>
	
	<div class="form-group">
	
	<label>Name</label>
	<form:input path="userName" placeholder="Enter UserName..." class="form-control"/>
	
	</div>
	
	<div class="form-group">
	
	<label>Email-ID</label>
	<form:input path="userEmail" type="email" placeholder="someone@example.com" class="form-control"/>
	
	</div>
	<div class="form-group">
	
	<label>Password</label>
	<form:input type="password" path="userPassword" placeholder="Enter password of in 4 chars..." class="form-control"/>
	
	</div>
	<div class="form-group">
	
	<label>Address</label>
	<form:input path="userAddress" placeholder="Enter Address..." class="form-control"></form:input>
	
	</div>
	<center>
	<button type="submit" class="btn btn-lg btn-info">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>
	
</div>

</form:form>
</div>
</div>
</div>
</body>
</html>