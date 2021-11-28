package com.cognizant.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MainConnection {

	private static Connection con = null;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobilemart?useSSL=false","root","1234");

		return con;
	}

}
