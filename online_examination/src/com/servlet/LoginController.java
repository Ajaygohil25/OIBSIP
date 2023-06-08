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

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String email= request.getParameter("email");
		System.out.println("mail.."+email);
		String password = request.getParameter("password");
		System.out.println("pass.."+password);
		RegistrationModel model = new StudentDao().getlogin(email,password);
		HttpSession session=request.getSession();
		
		if(model!=null)
		{
			System.out.println("Login successfully...");
			session.setAttribute("sid", model.getSid());
			session.setAttribute("fname", model.getFname());
			session.setAttribute("lname",model.getLname());
			response.sendRedirect("HomePage.jsp");
		}
		else
		{
			System.out.println("Error");
			response.sendRedirect("Login.jsp?msg=notmatch");
		}
		
	}

}
