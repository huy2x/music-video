package com.poly.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/login", "/logout", "/register" })
public class UserController extends HttpServlet {

	private static final long serialVersionUID = -5860351843059541642L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath(); // localhost:8080/ASM_JAVA4/ >>> path = "login"
		switch(path) {
		case "/login":
			doGetlogin(req, resp);
			break;
		}
	}

	private void doGetlogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);

	}
}
