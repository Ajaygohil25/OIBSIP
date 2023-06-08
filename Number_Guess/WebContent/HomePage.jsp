<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.sym"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 	rel="stylesheet" />
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css"
	rel="stylesheet" />
<title>home page</title>
<style type="text/css">
/* From uiverse.io by @alexruix */
.input {
 line-height: 28px;
 border: 2px solid transparent;
 border-bottom-color: #777;
 padding: .2rem 0;
 outline: none;
 background-color: transparent;
 color: #0d0c22;
 transition: .3s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.input:focus, input:hover {
 outline: none;
 padding: .2rem 1rem;
 border-radius: 1rem;
 border-color: #7a9cc6;
}

.input::placeholder {
 color: #777;
}

.input:focus::placeholder {
 opacity: 0;
 transition: opacity .3s;
}
.bg
{
 background-image:  url("gamebg.jpg");
}

</style>
</head>
<body class="bg">
<form action="HomePage.jsp">
<div style="margin-top: 200px" class="card text-center">
  <div class="card-header">Number Guess Game</div>
  <div class="card-body">
    <h5 class="card-title">Guess any number between 1 to 100 ! </h5>
    <% 
	    int min=1;
	    int max=100;
	    int attemp=10;
        Integer num=null;
        String rnum= request.getParameter("rnum");
        if(rnum==null)
        {
        	try
        	{
        	   num=(int)(Math.random()*(max-min+1)+min);
        	}
        	catch(Exception e)
        	{
        		System.out.print(e);
        		e.printStackTrace();
        	}
        }
        else
        {
        	num=Integer.parseInt(rnum);
        }
        
        System.out.println("random number of jsp is : "+num);
        Integer unum=null;
         String number=request.getParameter("unum");
        if(number!=null && !number.isEmpty() )
        {
        	try
        	{
        	    unum=Integer.parseInt(number);	
        	}
        	catch(Exception e)
        	{
        		System.out.print(e);
        		e.printStackTrace();
        	}
        }
        
      
     %>
     <span id="attempvalue"> </span> 
		
			
<input placeholder="Enter Number" name="unum" type="number" class="input" required> 
<input type="hidden" name="rnum" type="text" value="<%=num %>"> 
			<br><br>
			<button type="submit" class="btn btn-primary">GO !</button>
  </div>
  <% 
  if(number!=null && unum!=null)
  {
      if(unum<min || num>max)
      {
  %>
   <div class="card-footer text-muted" >Enter Number Between 1 to 100 !</div> 
   <%}
  else if(unum>num) 
  {
  %>
  <div class="card-footer text-muted">Ohh ! Higher Guess, Try again</div>
  <%
  }
  else if(unum<num)
  {
  %>
  <div class="card-footer text-muted">Ohh ! Lower Guess, Try again </div>
  <%
  }
  else if(unum==num)
  {
  %>
  <div class="card-footer text-muted">Yup ! You win the game </div>
  <%
  }
  }
  else
  {
  %>
   <div class="card-footer text-muted">Enter valied number</div>
   <%} %>
</div>
</form>
</body>
