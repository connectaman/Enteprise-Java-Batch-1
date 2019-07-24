package com.Batch_1.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UserModel> users = new ArrayList<>();
		users = UserDAO.getAllUser();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewUser.jsp");
		request.setAttribute("data",users);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("sname");
		System.out.println(search);
		List<UserModel> users = new ArrayList<>();
		users = UserDAO.getUserBySearch(search);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewUser.jsp");
		request.setAttribute("data",users);
		dispatcher.forward(request, response);
	}


}
