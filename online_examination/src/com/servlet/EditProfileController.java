package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.StudentDao;
import com.model.RegistrationModel;

@WebServlet("/EditProfileController")
public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EditProfileController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=  request.getSession();
		RegistrationModel Rmodel = new RegistrationModel();
		Rmodel.setFname(request.getParameter("fname"));
		Rmodel.setLname(request.getParameter("lname"));
		Rmodel.setAddress(request.getParameter("address"));
		Rmodel.setGender(request.getParameter("gender"));
        Rmodel.setDate(java.sql.Date.valueOf(request.getParameter("dob")));
		Rmodel.setCourse(request.getParameter("course"));
		Rmodel.setEmail(request.getParameter("email"));
		Rmodel.setPassword(request.getParameter("password"));
		int sid= (int) session.getAttribute("sid");
		
		int e= new StudentDao().Editprofile(Rmodel, sid);
		
		if(e>0)
		{
			System.out.println("updated...");
			response.sendRedirect("ViewProfile.jsp");
		}
		else
		{
			response.sendRedirect("Editprofile.jsp");
		}
		
		 
	}

}
