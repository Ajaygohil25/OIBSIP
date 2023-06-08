package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbutil.DButil;
import com.model.RegistrationModel;
import com.model.ansmodel;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression;


public class StudentDao 
{
	java.sql.Connection cn =null;
   int x;
   // for register student into the database
   public int studentregister(RegistrationModel rm)
   {
	   cn= new DButil().getconnection();
	   PreparedStatement st;
	   try 
	   {
		   String qry="insert into registration(fname,lname,address,gender,dob,course,email,password) values (?,?,?,?,?,?,?,?)";
		   st= cn.prepareStatement(qry);
		   st.setString(1, rm.getFname());
		   st.setString(2, rm.getLname());
		   st.setString(3, rm.getAddress());
		   st.setString(4, rm.getGender());
		   st.setDate(5,  rm.getDate());
		   st.setString(6, rm.getCourse());
		   st.setString(7, rm.getEmail());
		   st.setString(8, rm.getPassword());
		   x=st.executeUpdate();
		   cn.close();
	   } 
	   catch (Exception e) 
	   {
		  System.out.println(e);
		  e.printStackTrace();
	   }
	   return x;
   }
   // for get login information from database 
   RegistrationModel model  = null;
   public RegistrationModel getlogin(String email, String password)
   {
	   
		try
		{
             cn = new DButil().getconnection();
             PreparedStatement st;
             String qry ="Select * from registration where email=? and password=?";
             st=cn.prepareStatement(qry);
             st.setString(1, email);
             st.setString(2, password);
             ResultSet rs = st.executeQuery();
             
             if(rs.next())
             {
            	 model= new RegistrationModel();
            	 model.setFname(rs.getString(2));
            	 model.setLname(rs.getString(3));
            	 model.setSid(rs.getInt(1));
             }
             
		}
		
		catch (Exception e) 
		{
			e.printStackTrace();
			System.out.println(e);
		}
		return model;
   }
	// array list function for get ans from database
   public  ArrayList<ansmodel>  getAns()
   {
	   ArrayList<ansmodel> ans = new ArrayList<ansmodel>();
	   try
	   {
		   cn = new DButil().getconnection();
		   PreparedStatement st;
		   String qry = "select answer from  ans";
		   st= cn.prepareStatement(qry);
		   ResultSet rs=st.executeQuery();
		   while(rs.next())
		   {
			   ansmodel a = new ansmodel();
			   a.setAns(rs.getString(1));
			   ans.add(a);
		   }
	   }
	   catch(Exception e)
	   {
		   System.out.println(e);
		   e.printStackTrace();
	   }
	   
	   return ans;
   }
   // function for get information about register user
   RegistrationModel rm=null;
   public RegistrationModel getInfo(int sid)
   {
	   try
	   {
	     cn= new DButil().getconnection();
	     PreparedStatement st;
	     String query="select * from registration where sid=?";
	     st=cn.prepareStatement(query);
	     st.setInt(1, sid);
	     ResultSet rs= st.executeQuery();
	     if(rs.next())
	     {
	    	 rm = new RegistrationModel();
	    	 rm.setFname(rs.getString(2));
	    	 rm.setLname(rs.getString(3));
	    	 rm.setAddress(rs.getString(4));
	    	 rm.setGender(rs.getString(5));
	    	 rm.setDate(rs.getDate(6));
	    	 rm.setCourse(rs.getString(7));
	    	 rm.setEmail(rs.getString(8));
	    	 rm.setPassword(rs.getString(9));
	     }
	   }
	   catch (Exception e) 
	   {
		 e.printStackTrace();
		 System.out.println(e);
	   }
	   return rm;
   }
   
   // function for edit information in database
   int e=0;
   public int  Editprofile(RegistrationModel Rmodel,int sid)
   {
	   cn = new DButil().getconnection();
	   PreparedStatement st;
	   try 
	   {
		   String Query="update registration set fname=?,lname=?,address=?,gender=?,dob=?,course=?,email=?,password=? where sid=?";
	       st=cn.prepareStatement(Query);
	       st.setString(1, Rmodel.getFname());
	       st.setString(2, Rmodel.getLname());
	       st.setString(3, Rmodel.getAddress());
	       st.setString(4, Rmodel.getGender());
	       st.setDate(5, Rmodel.getDate());
	       st.setString(6, Rmodel.getCourse());
	       st.setString(7, Rmodel.getEmail());
	       st.setString(8, Rmodel.getPassword());
           st.setInt(9, sid);
           e=st.executeUpdate();
           cn.close();
           
	   } 
	   catch (Exception e) {
		e.printStackTrace();
		System.out.println(e);
	   }
	   
	   return e;
   }
}
