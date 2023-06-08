<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css"
	rel="stylesheet" />
<title>home page</title>
<style type="text/css">
a {
	font-family: sans-serif;
	font-style: normal;
	font-weight: bold;
}

img {
	height: 600px;
	width: 400px;
}
body {
  background-image: url('images/bgscore.jpg');
}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
	<div style="margin-top: 100px;"  class="container">
		<div class="card">
			<div class="card-header">Your Score of Exam</div>
			<div class="card-body">
				<blockquote class="blockquote mb-0">
				<%
				int Score= Integer.parseInt(request.getParameter("s"));
				
				%>
					<p><%=Score%>/10</p>
				</blockquote>
			</div>
		</div>
		
		<%
		if(Score<=5)
		{
			%>
			<p style="color:#b71c1c; margin-left: 50px;">Below The Average ! Practice More </p>
		<%
		}
		else if(Score>5 && Score<=8) 
		{
			%>
			<p style="color:#b71c1c; margin-left: 50px;">Good Score ! Congtratulation  </p>
			<%
		}
		else if(Score>8)
		{
		%>
		<p style="color:#b71c1c; margin-left: 50px;">Excellent Score ! Congtratulation  </p>
		<%	
		}
			
		%>
		
	</div>

</body>
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
</html>