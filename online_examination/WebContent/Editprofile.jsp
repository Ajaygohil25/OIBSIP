<%@page import="com.dao.StudentDao"%>
<%@page import="com.model.RegistrationModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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
<title>View Profile Page</title>
</head>
<body style="background-color:#e8eaf6 ">
	<%@include file="Header.jsp"%>
<%
                  HttpSession session1 = request.getSession();
                    int sid = (int) session1.getAttribute("sid");
                   RegistrationModel rm = new StudentDao().getInfo(sid);
%>
<form action="EditProfileController" method="post">
	<div class="card text-center" style="margin-top: 100px; margin-left: 20px; margin-right: 20px;">
		<div class="card-header">Edit Profile</div>
		<div class="card-body">
			<p class="card-text">First Name: 	 <input style="margin-left: 10px" type="text" name="fname" value="<%=rm.getFname() %>"></p>
			<p class="card-text">Last Name :  	 <input style="margin-left: 10px" type="text" name="lname" value="<%=rm.getLname() %>"> </p>
			<p class="card-text">Address :   	 <textarea style="margin-left: 10px" rows="2" cols="40" name="address"><%=rm.getAddress() %> </textarea> </p>
			<p class="card-text">Gender :    	 <input style="margin-left: 10px" type="text" name="gender" value="<%=rm.getGender() %>"> </p>
			<p class="card-text">Date of Birth:  <input style="margin-left: 10px" type="date" name="dob" value="<%=rm.getDate() %>"> </p>
			<p class="card-text">Course : 		 <input style="margin-left: 10px" type="text" name="course" value="<%=rm.getCourse() %>"> </p>
			<p class="card-text">Email :	     <input style="margin-left: 10px" type="text" name="email" value="<%=rm.getEmail() %>"> </p>
			<p class="card-text">Password :      <input style="margin-left: 10px" type="text" name="password" value="<%=rm.getPassword() %>"> </p>
			<button type="submit" class="btn btn-primary">Save Changes</button>
		</div>
	</div>
	</form>
</body>
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
</html>