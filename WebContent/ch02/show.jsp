<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="java.text.*" %>
<html>
	<head>
	   <title>输出当前系统日期</title>
	</head>
	  <!-- 这是HTML注释(客户端可以看到源代码）-->
	  <%-- 这是JSP注释 (客户端不能看到源代码) --%>
	  <body>

	  <%!
		  String formatDate(Date date){
    	      SimpleDateFormat f = new SimpleDateFormat("yyyy年MM月dd日");
    	  	  return f.format(date);
    	  }    	  
	  %>
	   第一次显示时间：今天是<%=formatDate(new Date()) %><br>
           第二次显示时间：今天是<% out.print(formatDate(new Date())); %>
	</body>
</html>

