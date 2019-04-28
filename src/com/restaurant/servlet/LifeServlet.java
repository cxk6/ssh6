package com.restaurant.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeServlet extends HttpServlet {

	// 构造方法
	public LifeServlet(){
		super();
		System.out.println("实例化时，LifeServlet()构造方法被调用");		
	}
    // 初始化方法
	public void init() throws ServletException {
		System.out.println("初始化时，init()方法被调用");		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("处理请求时，doGet()方法被调用");	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("处理请求时，doPost()方法被调用");	
	}
	
	// service()服务方法 
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		System.out.println("请求Servlet时，Service()方法被调用");	
	}	
	
	// 销毁方法
	public void destroy() {
		super.destroy(); 
		System.out.println("释放系统资源时，destroy()方法被调用");	
	}

}
