<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C++ Video</title>
<%@include file="Header.jsp"%>

<style>
.orange-border {
	border: 2px solid #FFA500;
	border-radius: 30px;
	background-color: orange;
	padding: 10px;
	margin-bottom: 260px;
}

.center-content {
	margin: 0 auto;
	text-align: center;
}

iframe {
	border: 10px solid white;
	border-radius: 25px;
	margin-left: 200px%;
	margin-top: 120px;
	margin-bottom: 120px;
}

h1 {
	border: 2px solid #FFA500;
	border-radius: 8px;
	padding: 10px;
}
</style>

</head>
<body>
	<div class="orange-border center-content">
		<iframe width="800" height="515"
			src="https://www.youtube.com/embed/e7sAf4SbS_g?si=zn3m9E8RMH-UBOQf"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
	</div>
	<br>
	<div class="orange-border center-content">
		<center>
			<h1>Notes Area</h1>

			<iframe
				src="https://drive.google.com/file/d/1v05BJ27DzWW3LzCNsAvFgDmLZTjw1acA/preview"
				width="800" height="515" allow="autoplay"></iframe>
		</center>
	</div>
</body>
</html>