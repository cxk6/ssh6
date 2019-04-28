<%@page import="com.restaurant.bean.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showEL.jsp' starting page</title>
    
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
	    // 在JSP中采用传统方法取得用户名
	 	Admin admin=(Admin)session.getAttribute("ADMIN");
	 	String loginName=admin.getLoginName();
	 %>    
	用户名：<%=loginName --%>
	
	使用EL表达式"."取得用户名：${sessionScope.ADMIN.loginName }    <br>
	使用EL表达式"[]"取得用户名：${sessionScope.ADMIN["loginName"] }<br>
	
	<%
		Map countries=new HashMap();
		countries.put("CN", "China");
		countries.put("RU", "Russia");
		request.setAttribute("countries", countries);
		
		List cities=new ArrayList();
		cities.add(0,"BeiJing");
		cities.add("ShangHai");
		request.setAttribute("cities", cities);		
	 %>
	 
	 国家：${countries.CN }<br>
	   &nbsp;&nbsp;  --城市：${cities[0] }<br>
	   &nbsp;&nbsp;  --城市：${cities[1] }<br>
	国家：${countries.RU}<br>
	
  </body>
</html>
