<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>RangeOne页面</title>
    
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
    <%--
        // 2.3.1 page范围
		String name="pageRange";
		pageContext.setAttribute("name", name);    
	%>
	<h3>rangeOne：<%=pageContext.getAttribute("name") %></h3>
	<% pageContext.include("rangeTwo.jsp"); --%>
	
	<%--
        // 2.3.2 request范围
		String name="requestRange";
		request.setAttribute("name", name);    
	%>
	<h3>rangeOne：<%=request.getAttribute("name") %></h3>
	<% pageContext.include("rangeTwo.jsp"); --%>
	
	<%--
        // 2.3.3 session范围
		String req="requestRange";
		String ses="sessionRange";
		request.setAttribute("req", req);
		session.setAttribute("ses", ses);
		response.sendRedirect("rangeTwo.jsp");		 
	--%>
	<%
        // 2.3.4 application范围
		String ses="sessionRange";
		String app="applicationRange";
		session.setAttribute("ses", ses);
		application.setAttribute("app", app);
		response.sendRedirect("rangeTwo.jsp");		 
	%>

  </body>
</html>
