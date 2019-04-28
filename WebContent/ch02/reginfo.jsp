<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册成功页面</title>
    
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
  	<%
  		request.setCharacterEncoding("utf-8");
  		String username=request.getParameter("username");
  		String password=request.getParameter("password");
  		String[] habits=request.getParameterValues("habit");
  	 %>
  	 您输入的注册信息如下：<br>
  	 用户名：<%=username %><br>
  	 <%
  	 	out.print("密码为："+password+"<br>");
  	 	out.print("您的兴趣爱好为：");
  	 	if(habits!=null){
  	 		for(int i=0;i<habits.length;i++){
  	 			out.print(habits[i]+"、");
  	 		}
  	 	}		
  	 	
  	  %>
  	
  	
  </body>
</html>
