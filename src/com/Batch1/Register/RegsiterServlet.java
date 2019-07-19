package com.Batch1.Register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegsiterServlet")
public class RegsiterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("mail");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String city = request.getParameter("city");
		RegisterModel reg = new RegisterModel();
		reg.setName(name);
		reg.setEmail(email);
		reg.setPhone(phone);
		reg.setPassword(password);
		reg.setCity(city);
		int result = RegisterDAO.addRegister(reg);
		System.out.println(result);
		if(result >0) {
			response.sendRedirect("register.jsp");
		}
		
	}

}
