package com.poly.controller;

import java.io.IOException;

import com.poly.constant.SessionAttr;
import com.poly.entity.User;
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
		HttpSession session = req.getSession();
		String path = req.getServletPath(); // localhost:8080/ASM_JAVA4/ >>> path = "login"
		switch (path) {
		case "/login":
			doGetlogin(req, resp);
			break;
		case "/register":
			doGetRegister(req, resp);
			break;
		case "/logout":
			doGetLogout(session, req, resp);
			break;		
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/login":
			doPostlogin(session, req, resp);
			break;
		case "/register":
			doPostRegister(session, req, resp);
			break;
			
		}
	}

	private void doGetlogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);

	}
	
	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/views/user/register.jsp").forward(req, resp);

	}
	
	private void doGetLogout(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		session.removeAttribute(SessionAttr.CURRENT_USER);
		resp.sendRedirect("index");

	}




	private void doPostlogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		User user = userService.login(username, password);
		if (user != null) {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			resp.sendRedirect("index");
		}else {
			resp.sendRedirect("login");
		}

	}
	
	private void doPostRegister(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		
		User user = userService.register(username, password, email);
		
		if (user != null) {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			resp.sendRedirect("index");
		}else {
			resp.sendRedirect("register");
		}

	}
}
