package com.emailnotification.web;

import java.io.IOException;



import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.emailnotification.bean.User;
import com.emailnotification.conprov.ConProv;
import com.emailnotification.dao.UserDao;

 
@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public Login() {
        super();
         
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		//doGet(request, response);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Connection connection = ConProv.getConn();
			UserDao dao = new UserDao(connection);
			User user = dao.callStoredProcedure(username, password);
			if(user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("usertest.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendRedirect("Error.jsp");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("Error.jsp");
		}
	}

}
