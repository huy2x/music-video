package com.poly.controller;

import java.io.IOException;

import com.poly.service.UserService;
import com.poly.service.impl.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/login", "/logout", "/register" })
public class UserController extends HttpServlet {

	private static final long serialVersionUID = -5860351843059541642L;
	
	private UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath(); // localhost:8080/ASM_JAVA4/ >>> path = "login"
		switch (path) {
		case "/login":
			doGetlogin(req, resp);
			break;
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath(); // localhost:8080/ASM_JAVA4/ >>> path = "login"
		switch (path) {
		case "/login":
			doPostlogin(session, req, resp);
			break;
		}
	}

	private void doGetlogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);

	}



	private void doPostlogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);

	}
}
