package com.Batch1.Mailer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String email = request.getParameter("mail");
		String message = request.getParameter("msg");
		try {
			Mailer.SendMail("winwithaman@gmail.com", "test", "test nail");
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		
	}
	
}
