package com.sessions.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("sesion") == null)
		{
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = "admin";
		String pass = "123456";
		String us = request.getParameter("txtUser");
		String pas = request.getParameter("txtPass");		
		if(us.equals(user) && pas.equals(pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("sesion", request.getParameter("txtUser"));
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("UserLogin", true);
			request.getRequestDispatcher("index.jsp").forward(request, response);;
		}
		
		
		
	}

}
