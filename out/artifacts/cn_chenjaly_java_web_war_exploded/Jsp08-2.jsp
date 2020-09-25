<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp08-2</title>
</head>
<body>
    <h2>虽然这个页面是重定向,但是我们通过session中取出来了信息</h2>
    <%
        out.println("欢迎"+session.getAttribute("name"));
    %>
</body>
</html>
