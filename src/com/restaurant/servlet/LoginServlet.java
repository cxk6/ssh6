package com.restaurant.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.service.AdminService;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String loginName=request.getParameter("loginName");
	    String loginPwd=request.getParameter("loginPwd");
	    AdminService adminService=new AdminService();
	    boolean isLogin=adminService.login(loginName, loginPwd);
	    if (isLogin) {
			request.setAttribute("LOGIN_NAME", loginName);
			request.getRequestDispatcher("../ch04/info.jsp").forward(request, response);
		}else{
			out.print("登录失败");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
