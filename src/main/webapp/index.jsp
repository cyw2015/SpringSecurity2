<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>首页</title>
  </head>
  
  <body>
    这是首页,欢迎<sec:authentication property="name"/>! <br>
    
    <sec:authorize url="/admin.jsp">
     <a href="admin.jsp">进入admin页面</a>
    </sec:authorize>
    <a href="logout">退出登录</a>
    <br />
    <a href="hello.do?method=sayHello&name=<sec:authentication property='name'/>" >
    问好
    </a>
     <a href="hello.do?method=sayBye&name=<sec:authentication property='name'/>" >
    再见
    </a>
  </body>
</html>
