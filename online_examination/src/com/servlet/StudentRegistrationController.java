package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.model.RegistrationModel;


@WebServlet("/StudentRegistrationController")
public class StudentRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public StudentRegistrationController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
           RegistrationModel rm = new RegistrationModel();
           rm.setFname(request.getParameter("fname"));
           rm.setLname(request.getParameter("lname"));
           rm.setAddress(request.getParameter("address"));
	       rm.setGender(request.getParameter("gender"));
	       rm.setDate(java.sql.Date.valueOf(request.getParameter("date")));
	       rm.setCourse(request.getParameter("course"));
	       rm.setEmail(request.getParameter("email"));
	       rm.setPassword(request.getParameter("password"));
	       
	       int x= new StudentDao().studentregister(rm);
	       if(x>0)
	       {
	    	   System.out.println("Registration successfully");
	    	   response.sendRedirect("Login.jsp");
	       }
	       else
	       {
	    	   response.sendRedirect("Registration.jsp");
	       }
	}

}
