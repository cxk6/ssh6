<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(username.equals("admin")&&password.equals("admin")){
    	session.setAttribute("LOGINED_NAME", username);
    	session.setMaxInactiveInterval(10*60);
    	response.sendRedirect("welcome.jsp");
    	//request.getRequestDispatcher("welcome.jsp").forward(request, response);
    }else{
    	response.sendRedirect("index.jsp");
    }
    

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录处理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
