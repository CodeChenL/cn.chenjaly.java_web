<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Date d =new Date();
	System.out.println("当前时间是"+d);
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd天");
	System.out.println("当前时间是"+sdf.format(d));
	%>
	<p>当前时间是：<%=sdf.format(d) %></p>
</body>
</html>