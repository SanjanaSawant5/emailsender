package com.emailnotification.dao;

import java.sql.CallableStatement;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.emailnotification.bean.User;

public class UserDao {
	
	private Connection con;
	
	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User callStoredProcedure(String username, String password) {
		User user = null;
		try {
			String storedProcedureCall = "CALL usertestlogin(?,?)";
			CallableStatement stmt = this.con.prepareCall(storedProcedureCall);
			stmt.setString(1, username);
	        stmt.setString(2, password);
	        boolean hasResult = stmt.execute();
	        if (hasResult) {
	        	ResultSet rs = stmt.getResultSet();
	        	if (rs.next()) {
	        		int propertycode = rs.getInt("propertycode");
	        		String propertyname = rs.getString("propertyname");
	        		int unit = rs.getInt("unit");
	        		String resident = rs.getString("resident");
	        		String name = rs.getString("name");
	        		String vehiclenumber1 = rs.getString("vehiclenumber1");
	        		String registrationtenantname1 = rs.getString("registrationtenantname1");
	        		String licensenumber1 = rs.getString("licensenumber1");
	        		String vehiclemodel1 = rs.getString("vehiclemodel1");
	        		String registrationv1doc = rs.getString("registrationv1doc");
	        		String registrationexpiredate1 = rs.getString("registrationexpiredate1");
	        		String insurancev1doc = rs.getString("insurancev1doc");
	        		String insuranceexpiredate1 = rs.getString("insuranceexpiredate1");
	        		String status1 = rs.getString("status1");
	        		String vehiclenumber2 = rs.getString("vehiclenumber2");
	        		String registrationtenantname2 = rs.getString("registrationtenantname2");
	        		String licensenumber2 = rs.getString("licensenumber2");
	        		String vehiclemodel2 = rs.getString("vehiclemodel2");
	        		String registrationv2doc = rs.getString("registrationv2doc");
	        		String registrationexpiredate2 = rs.getString("registrationexpiredate2");
	        		String insurancev2doc = rs.getString("insurancev2doc");
	        		String insuranceexpiredate2 = rs.getString("insuranceexpiredate2");
	        		String status2 = rs.getString("status2");
	        		user = new User(username, password, propertycode, propertyname, unit, resident, name, vehiclenumber1, registrationtenantname1, licensenumber1, vehiclemodel1, registrationv1doc, registrationexpiredate1, insurancev1doc, insuranceexpiredate1, status1, vehiclenumber2, registrationtenantname2, licensenumber2, vehiclemodel2,  registrationv2doc, registrationexpiredate2, insurancev2doc, insuranceexpiredate2, status2);
	        	}
	        }
	        
	        hasResult = stmt.getMoreResults();
	        if(hasResult) {
	        	ResultSet rs = stmt.getResultSet();
	        	while(rs.next()) {
	        }
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
		return user;
	}
}
