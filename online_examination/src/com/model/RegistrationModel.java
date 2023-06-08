package com.model;

import java.sql.Date;

public class RegistrationModel 
{
   private int sid;
   private String fname,lname,address,gender,course,email,password;
   private Date date;
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}

public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
 
}
