package com.dbutil;
import java.sql.Connection;
import java.sql.DriverManager;

public class DButil 
{
    Connection cn =null;
    public Connection getconnection()
    {
       try
       {
          Class.forName("com.mysql.jdbc.Driver");
          cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_examination","root","");
          System.out.println("connection is established...");
       }
       catch(Exception e)
       {
    	   e.printStackTrace();
       }
       return cn;
    }
}
