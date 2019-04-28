<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>out对象</title>    

  </head>
  
  <body>
    <%
    	out.println("AAAAAAA");
    	out.println("BBBBBBB");	
        //out.flush();   
        out.clear();
     %>
     缓冲区大小：<%=out.getBufferSize() %>Byte.
     缓冲区剩余大小：<%=out.getRemaining() %>Byte.
  </body>
</html>
