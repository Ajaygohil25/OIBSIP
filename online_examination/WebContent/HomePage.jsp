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
<%@ include file="Header.jsp" %>
	<!-- <header>
		Navbar
		<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
					aria-controls="navbarExample01" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>


				change code
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarExample01">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item active"><a class="nav-link"
							aria-current="page" href="HomePage.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					</ul>
				</div>

			</div>
		</nav>
		Navbar
		</header> -->

		<!-- Jumbotron -->
		<!-- Carousel wrapper -->
		<div id="carouselBasicExample"
			style="margin-left: 30px; margin-right: 20px;"
			class="carousel slide carousel-fade" data-mdb-ride="carousel">
			<!-- Indicators -->
			<div class="carousel-indicators">
				<button type="button" data-mdb-target="#carouselBasicExample"
					data-mdb-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-mdb-target="#carouselBasicExample"
					data-mdb-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-mdb-target="#carouselBasicExample"
					data-mdb-slide-to="2" aria-label="Slide 3"></button>
			</div>


			<!-- Inner -->
			<div class="carousel-inner">
				<!-- Single item -->
				<div class="carousel-item active">
					<img src="images/img1.jpg" class="d-block w-100"
						alt="Sunset Over the City" />
					<div class="carousel-caption d-none d-md-block"
						style="color: black;">

						<h5>Welcome to Online Examination</h5>
						<p>You have access of this portal till 20 minutes</p>
					</div>
				</div>

				<!-- Single item -->
				<div class="carousel-item">
					<img src="images/img2.jpg" class="d-block w-100"
						alt="Canyon at Nigh" />
					<div class="carousel-caption d-none d-md-block">
						<h5>Once you start exam you have 10 minutes of time for give
							answer of msq after that form will auto submit</h5>
					</div>
				</div>
			</div>
			<!-- Inner -->

			<!-- Controls -->
			<button class="carousel-control-prev" type="button"
				data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- Carousel wrapper -->
		<!-- Jumbotron -->
	

<br> <br>
<!-- main part -->
<div class="container">
<div class="card">
  <div class="card-header">Java Examination </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>You have 10 minutes for attemp this question after 10 minutes form will auto submit !</p>
       <a href="Exam.jsp"><button type="button" class="btn btn-secondary">Start Examination </button></a>
    </blockquote>
  </div>
</div>
</div>



</body>
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
</html>