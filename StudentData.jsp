<%@page import="project1.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	
</head>
<body>

<%@include file="Admin_header.jsp" %>
    <div class="intro-section" id="home-section">
      
      <div class="nav" style="background-color: black;" data-stellar-background-ratio="1">
             </div>
    
    

<%
        ArrayList<Member> li =(ArrayList<Member>)request.getAttribute("LIST");
	String m =(String) request.getAttribute("msg");
	%>
	<br>
	<div class="container">
	
	<h1>STUDENT RECORDS</h1>
	<h2>
	<%
	if( m != null)
	out.println(m);
	%>
	</h2>
   <br>
	<table border="2" class="table">
		<thead>
			<td>ID</td>
			<td>EMAIL</td>
			<td>PASSWORD</td>
			<td>NAME</td>
			<td>CONTACT</td>
			<td>ADDRESS</td>
			<td>DELETION</td>
			<td>UPDATION</td>
		</thead>

		<%
	  for(Member as : li){
	  %>
		<tr>
			<td><%=as.getId()%></td>
			<td><%=as.getEmail()%></td>
			<td><%=as.getIpassword()%></td>
			<td><%=as.getIname()%></td>
			<td><%=as.getContact()%></td>
			<td><%=as.getAddress()%></td>
			
	 	  <td> <a href="deletedCtrl?id=<%=as.getId()%>"
		class="btn btn-danger" onclick="return confirm('Are you Sure to Delete This?')">DELETE</a></td>
			<td> <a href="updateCtrl?id=<%=as.getId()%>" class="btn btn-primary" >EDIT</a></td>

		</tr>
		<%
		}
		%>


	</table>
</div>
  
        

</body>
</html>