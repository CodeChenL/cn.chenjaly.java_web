<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	out.println("你输入的用户信息：<br>");
	out.println("用户名：" + name + "<br>");
	out.println("用户密码：" + pwd + "<br>");
	
	String [] channels = request.getParameterValues("channel");
	out.println("信息来源：");
	for(String channel:channels){
		out.println(channel + "");
	}
%>
</body>
</html>