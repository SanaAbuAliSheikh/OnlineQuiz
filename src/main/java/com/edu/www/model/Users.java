package com.edu.www.model;

public class Users {

	int userid;
	String password;
	
	public Users()
	{
		
	}
	
	public Users(int userid, String password) {
		
		this.userid = userid;
		this.password = password;
	}
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
