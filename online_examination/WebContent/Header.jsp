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
</style>
</head>
<body>
	<header>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
					aria-controls="navbarExample01" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>


				<!-- change code -->
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarExample01">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item active"><a class="nav-link"
							aria-current="page" href="HomePage.jsp">Home</a></li>
						
						<%
							HttpSession sessionn = request.getSession();
							String name = (String) sessionn.getAttribute("fname");
						%>
						<!-- Light -->
						 <div class="btn-group shadow-0">
							<button type="button" class="btn btn-light dropdown-toggle"
								data-mdb-toggle="dropdown" aria-expanded="false">
								<%=name%></button>
							 <ul class="dropdown-menu">
								<li><a class="dropdown-item" href="ViewProfile.jsp">View Profile</a></li>
								<li><a class="dropdown-item" href="Editprofile.jsp">Edit Profile</a></li>
								<li><a class="dropdown-item" href="LogoutController" >Log out</a></li>
							</ul>
						</div>
						

					</ul>
				</div>

			</div>
		</nav>
		<!-- Navbar -->
	</header>
</body>
</html>