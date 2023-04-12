package com.emailnotification.web;

import java.io.IOException;

import java.sql.PreparedStatement;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

 
@WebServlet(name = "Notification", urlPatterns = "/NotificationServlet")
public class NotificationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    String url = "jdbc:mysql://localhost:3306/parkingportal";
    String username = "root";
    String password = "Intern@1234";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        String acceptStatus = request.getParameter("accept");
        String rejectStatus = request.getParameter("reject");
        
        if (acceptStatus != null) {
            int id = Integer.parseInt(request.getParameter("id"));
        try (Connection connection = DriverManager.getConnection(url, username, password)) {
                String updateAcceptStatus = "UPDATE test SET acceptrejectreg1 = 'yes' WHERE id = ?";
                PreparedStatement stmt = connection.prepareStatement(updateAcceptStatus);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                String subject = "Document Accepted";
                String message = "Your document has been accepted.";
                sendEmail(email, subject, message);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if (rejectStatus != null) {
            int id = Integer.parseInt(request.getParameter("id"));
        try (Connection connection = DriverManager.getConnection(url, username, password)) {
                String updateRejectStatus = "UPDATE test SET acceptrejectins1 = 'yes' WHERE id = ?";
                PreparedStatement stmt = connection.prepareStatement(updateRejectStatus);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                String subject = "Document Rejected";
                String message = "Your document has been rejected.";
                sendEmail(email, subject, message);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    private void sendEmail(String email, String subject, String message) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("parkingportal5@gmail.com", "Intern@1234");
            }
        });
        
        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress("parkingportal5@gmail.com"));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
            msg.setSubject(subject);
            msg.setText(message);
            
            Transport.send(msg);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}


 