<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>
              输出当前系统日期
    </title>
  </head>
  <!-- 这是HTML注释(客户端可以看到此处代码) -->
  <%-- 这是JSP注释(客户端不能看到此处代码) --%>
  <body>
      大家好，今天日期是：<%=formatDate(new Date()) %>
      
   <%!
      // 使用JSP的声明
      String formatDate(Date date){
        // 使用预定格式将日期转换成字符串
   		SimpleDateFormat f=new SimpleDateFormat("yyyy年MM月dd日");
   		//String currentTime=f.format(new Date());
   		return f.format(date);
   	  }
    %>
  
        第一次显示时间，今天是：<%=formatDate(new Date()) %><br>
        第二次显示时间，今天是：<%=formatDate(new Date()) %><br>
    <%! String declare="这是声明"; %>
    <%=declare %>
    <br>
    <%
         char[] array={'A','B','C','D'};         
         for(int i=0;i<array.length;i++){
         	out.println(array[i]);
    %>
         <br>
    <% 
         }
    %>
    <%        
         for(int i=0;i<array.length;i++){
         	out.println(array[i]+"<br>");
         }
     %>
     <%@ include file="../index.jsp" %>

  </body>
</html>