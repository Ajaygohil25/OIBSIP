<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration for exam</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
.card-registration .select-input.form-control[readonly]:not ([disabled]
	) {
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}
</style>
</head>
<body>
	<form action="StudentRegistrationController" method="post">
		<section class="h-100 bg-dark">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
										alt="Sample photo" class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Student registration form</h3>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example1m"
														class="form-control form-control-lg" name="fname" /> <label
														class="form-label" for="form3Example1m">First name</label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example1n"
														class="form-control form-control-lg" name="lname" /> <label
														class="form-label" for="form3Example1n">Last name</label>
												</div>
											</div>
										</div>



										<div class="form-outline mb-4">
											<input type="text" id="form3Example8"
												class="form-control form-control-lg" name="address" /> <label
												class="form-label" for="form3Example8">Address</label>
										</div>

										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Gender:</h6>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="femaleGender" value="female" /> <label
													class="form-check-label" for="femaleGender">Female</label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender"
													id="maleGender" value="male" /> <label
													class="form-check-label" for="maleGender">Male</label>
											</div>

											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="gender"
													id="otherGender" value="option3" /> <label
													class="form-check-label" for="otherGender">Other</label>
											</div>

										</div>

										<div class="form-outline mb-4">
											<input type="date" id="form3Example9"
												class="form-control form-control-lg" name="date" /> <label
												class="form-label" for="form3Example9">DOB</label>
										</div>


										<div class="form-outline mb-4">
											<input type="text" id="form3Example99"
												class="form-control form-control-lg" name="course" /> <label
												class="form-label" for="form3Example99">Course</label>
										</div>

										<div class="form-outline mb-4">
											<input type="text" id="form3Example97"
												class="form-control form-control-lg" name="email" /> <label
												class="form-label" for="form3Example97">Email ID</label>
										</div>

										<div class="form-outline mb-4">
											<input type="password" id="form3Example97"
												class="form-control form-control-lg" name="password" /> <label
												class="form-label" for="form3Example97">password</label>
										</div>
										<div class="d-flex justify-content-end pt-3">

											<button type="submit" class="btn btn-warning btn-lg ms-2">Submit
												form</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
</body>
</html>