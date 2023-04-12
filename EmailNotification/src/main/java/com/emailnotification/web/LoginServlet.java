package com.emailnotification.web;

import java.io.IOException;



import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.emailnotification.conprov.ConProv;


 
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    public LoginServlet() {
        super();
         
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		//doGet(request, response);
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    Connection connection = ConProv.getConn();
	    try {
	    	String storedProcedureCall = "CALL userlogin(?,?)";
            CallableStatement stmt = connection.prepareCall("storedProcedureCall");
            stmt.setString(1, username);
            stmt.setString(2, password);
            boolean hasResult = stmt.execute();
            
            if (hasResult) {
                ResultSet rs = stmt.getResultSet();
            if (rs.next()) {
                HttpSession session = request.getSession();
                RequestDispatcher dispatcher = request.getRequestDispatcher("usertest.jsp");
                dispatcher.forward(request, response);
            }
            }else {
                response.sendRedirect("Error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
	    }
	}

}
