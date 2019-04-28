<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>RangeTwo页面</title>
    
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
   <%--//2.3.1-2.3.2
 	 <h3>rangeTwo：<%=request.getAttribute("name") %></h3>
 	--%>
   <%-- //2.3.3
 	<h3>request：<%=request.getAttribute("req") %></h3>
 	<h3>session：<%=session.getAttribute("ses") %></h3>
 	--%>
 	<%-- //2.3.4 --%>
 	<h3>session：<%=session.getAttribute("ses") %></h3>
 	<h3>application：<%=application.getAttribute("app") %></h3>
  </body>
</html>
