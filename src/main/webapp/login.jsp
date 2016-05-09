<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">
<title>登录页面</title>
</head>

<body>
	<h3>用户登录</h3>
	${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message }
	<form action="login" method="post">
		用户名：<input type="text" name="username" /><br /> 密码<input
			type="password" name="password" /><br /> <input type="submit"
			value="登录"> 
	</form>
</body>
</html>
