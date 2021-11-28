package com.cognizant.model;

public class Customer {


	private String UserName;	
	private String Password;
		
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}	
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
	public Customer(String userName, String password) {
		super();
		UserName = userName;
		Password = password;
	}
	public Customer() {
		
	}
	

	
	
}
