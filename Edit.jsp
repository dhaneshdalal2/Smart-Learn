<%@page import="project1.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<%@include file="Header.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
<div class="jumbotron">
			<h1>STUDENT ADMISSION</h1>
			
		</div>
	<% Member mem = (Member)request.getAttribute("ME"); %>
<form action="updateCtrl" method="post">
		<div class="form-group">
				<label for="exampleInputEmail1"> ID NO</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="id" value="<%=mem.getId()%>" readonly>

			</div>
		
			<div class="form-group">
				<label for="exampleInputEmail1"> Email</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
				placeholder="Enter a valid email address"	value="<%=mem.getEmail()%>" readonly aria-describedby="emailHelp" name="email">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"> Password</label> <input
					type="password" class="form-control" id="exampleInputEmail1"
				 placeholder="Enter password" value="<%=mem.getIpassword()%>"	aria-describedby="emailHelp" name="ipassword">

			</div>
		
			<div class="form-group">
				<label for="exampleInputEmail1"> NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" value="<%=mem.getIname()%>" name="iname">

			</div>
			
			
			<div class="form-group">
				<label for="exampleInputEmail1"> CONTACT</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" value="<%=mem.getContact()%>" name="contact">

			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"> ADDRESS</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" value="<%=mem.getAddress()%>" name="address">

			</div>
		
			<button type="submit" class="btn btn-primary">UPDATE</button>
			<input type="reset" class="btn btn-primary" value="CLEAR"/>
		</form>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

</body>
</html>