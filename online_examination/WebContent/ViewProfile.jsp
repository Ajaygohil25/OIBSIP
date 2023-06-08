<%@page import="com.dao.StudentDao"%>
<%@page import="com.model.RegistrationModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css"
	rel="stylesheet" /> 
<title>View Profile Page</title>
</head>
<body>
<%@include file="Header.jsp"%>
<section class="vh-100" style="background-color: #f4f5f7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="images/profilepic.jpg"
                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
              <h5>Marie Horwitz</h5>
              <p>Web Designer</p>
              <i class="far fa-edit mb-5"></i>
            </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6>Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                <%
                  HttpSession session1 = request.getSession();
                    int sid = (int) session1.getAttribute("sid");
                   RegistrationModel rm = new StudentDao().getInfo(sid);
                %>
                  <div class="col-6 mb-3">
                    <h6>Name :</h6>
                    <p class="text-muted"><%= rm.getFname() %>  <%= rm.getLname()%></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Gender :</h6>
                    <p class="text-muted"><%= rm.getGender() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Address :</h6>
                    <p class="text-muted"><%=rm.getAddress() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Course : </h6>
                    <p class="text-muted"><%= rm.getCourse()%> </p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Date of Birth : </h6>
                    <p class="text-muted"><%= rm.getDate() %></p>
                  </div>
                   
                </div>
                <h6 style="color: red">Login Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Email :</h6>
                    <p class="text-muted"><%= rm.getEmail() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Password :</h6>
                    <p class="text-muted"><%= rm.getPassword() %></p>
                </div>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
</html>