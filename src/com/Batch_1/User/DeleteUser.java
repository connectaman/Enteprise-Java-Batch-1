package com.Batch_1.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		boolean res = UserDAO.deleteUser(id);
		if(res) {
			response.sendRedirect("UserServlet");
		}
		else
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserServlet");
			request.setAttribute("status","Error in deleting the user");
			dispatcher.forward(request, response);
		}
	}


}
