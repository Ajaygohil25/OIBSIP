<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online examination System</title>
<style type="text/css">

.login-card {
   padding-top : 100px;
  width: 300px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
  background-color: #e8e8e8;
  box-shadow: 2px 2px 10px #ccc;
}

.card-header {
  text-align: center;
  margin-bottom: 20px
}

.card-header .log {
  margin: 0;
  font-size: 24px;
  color: black;
}

.form-group {
  margin-bottom: 15px;
}

label {
  font-size: 18px;
  margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
  width: 100%;
  padding: 12px 20px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  transition: 0.5s;
}

input[type="submit"] {
  width: 100%;
  background-color: #333;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #ccc;
  color: black;
}

body {
  background-color: #ffffff;
  font-family: sans-serif;
}

header {
  background-color: #000000;
  color: #ffffff;
  height: 100px;
  padding: 20px;
  text-align: center;
}

h1 {
  font-size: 3em;
}

p {
  font-size: 1.5em;
   color: white;
}
</style>

<body>
<header>
  <p>Welcome to the online examination system. Please login to begin your exam.</p>
</header>
<body>
<div style="margin-top: 50px" class="login-card">
  <div class="card-header">
    <div class="log">Login</div>
    
  </div>
  <form action="LoginController"  method="post">
  <% 
       String msg= null;
       msg=request.getParameter("msg");
        if(msg !=null && msg.equals("notmatch"))
       {
    	   %>
    	   <h4 align="center" style="color: red;"> Invalied Email Or Password ! </h4>
    	   <% 
       }
       
    %>
    <div class="form-group">
    
      <label for="username">Email ID:</label>
      <input name="email" id="username" type="text" required >
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input name="password" id="password" type="password" required >
    </div>
    <div class="form-group">
      <input value="Login" type="submit">
    </div>
  </form>
</div>

</body>
</html>