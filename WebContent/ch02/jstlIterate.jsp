<%@page import="com.restaurant.bean.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	Admin admin=null;
	List adminList=new ArrayList();
	for(int i=0;i<10;i++){
		admin=new Admin(i+1,"管理员"+(i+1),"密码"+(i+1));
		adminList.add(admin);
	}
	request.setAttribute("ADMINLIST", adminList);
%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSTL迭代标签的使用</title>
    
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
	<table border="1" width="70%" align="center">
		<tr>
			<td>ID</td>
			<td>用户名</td>
			<td>密码</td>
		</tr>
	<c:forEach var="admin" items="${requestScope.ADMINLIST}" varStatus="status">
		<tr <c:if test="${status.index%2==1}">style="background-color:yellow;" </c:if>>
			<td>${admin.id }</td>
			<td>${admin["loginName"] }</td>
			<td>${admin.loginPwd }</td>
		</tr>
	</c:forEach>
	</table>
	<br>
	<c:forTokens items="China,Russia,France" delims="," var="item">
		<c:out value="${item }"/> <br>
	</c:forTokens>
  </body>
</html>
