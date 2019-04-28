<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSTL条件标签库的使用</title>
    
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
  		<c:set var="isLogin" value="${not empty sessionScope.LOGIN_NAME }"></c:set>
  		<c:if test="${not isLogin }">
	      <form name="form1" method="post" action="ch02/doJstlCondition.jsp">
	      	用户名：<input type="text" name="username"> <br>
	  	        密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"> <br>   
	  	   <input type="submit" value="登录">
		  </form>
  		</c:if>
  		<c:if test="${isLogin }">
  			<c:out value="${sessionScope.LOGIN_NAME } "></c:out>已经登录！
  		</c:if>
  		<c:choose>
  			<c:when test="${row.v_money<10000 }">
  				初级者
  			</c:when>
			<c:when test="${row.v_money>=10000 && row.v_money<20000}">
  				中级者
  			</c:when>
  			<c:otherwise>
  				高级者
  			</c:otherwise>
  		</c:choose>

  </body>
</html>
