package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.model.ansmodel;

@WebServlet("/SubmitController")
public class SubmitController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SubmitController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int score=0;
		int wrong=0;
		// store user answer in Uans arraylist
		ArrayList<String> Uans = new ArrayList<String>();
		for (int i=1; i<=10; i++)
		{
			String ans=request.getParameter("q"+i);
			Uans.add(ans);
		}
		for(String ans: Uans)
		{
		  System.out.println("Answer from user : "+ans);	
		}
		
		
		// get right ans from database
		ArrayList<ansmodel> ans = new StudentDao().getAns();
		int numque=Math.min(Uans.size(), ans.size());
		for (int i =0; i<numque; i++)
		{
			ansmodel a = ans.get(i);
			System.out.println("elements in array list  at index of : "+i+" :"+a.getAns());
			
			// comparing ans of user with ans of database
			String userans =Uans.get(i);
			if(userans==null)
			{
				wrong++;
			}
			else
			{
				
				if(userans.equals(a.getAns()))
				{
					score++;
				}
				else
				{
					wrong++;
				}
			}	
		}
		
		System.out.println("at the end score of user : "+score);
		System.out.println("at the end wrong score of user : "+wrong);
		
		response.sendRedirect("Score.jsp?s="+score+"&w="+wrong);
	}

}
