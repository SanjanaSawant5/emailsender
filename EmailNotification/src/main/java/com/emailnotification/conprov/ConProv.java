package com.emailnotification.conprov;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConProv {
	
	private static Connection con;
	public static Connection getConn() {
		try {
			if(con==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal", "root", "Intern@1234");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
