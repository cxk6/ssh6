<%@page import="com.restaurant.bean.Admin"%>
<%@page import="com.restaurant.bean.AdminControl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//使用JavaBean
	AdminControl ac=new AdminControl();
	Admin admin=new Admin();	
	admin.setId(ac.getMaxId()+1);
	admin.setLoginName("yzpc");
	admin.setLoginPwd("yzpc");		
	ac.insert(admin);   // 此插入方法未实现
	// 2.5 小节的EL表达式需要以下设置
	session.setAttribute("ADMIN", admin);   
	response.sendRedirect("showEL.jsp");
 %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showJavaBean.jsp' starting page</title>
    
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
       
  </body>
</html>
