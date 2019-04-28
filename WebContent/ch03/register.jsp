<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
        请输入注册信息<br>
      <form name="form1" method="post" action="servlet/RegisterServlet">
      	用户名：<input type="text" name="username"> <br>
  	        密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"> <br>
  	   业余爱好：
  	   <input type="checkbox" name="habit" value="看书">看书
  	   <input type="checkbox" name="habit" value="玩游戏">玩游戏
  	   <input type="checkbox" name="habit" value="旅游">旅游
  	   <input type="checkbox" name="habit" value="看电视">看电视<br> 
  	   <input type="submit" value="提交">
  	   <input type="reset" value="取消">

	</form>
  </body>
</html>
