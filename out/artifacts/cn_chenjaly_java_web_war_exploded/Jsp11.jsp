<%@ page import="jakarta.servlet.http.Cookie" %><%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/15
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp11</title>
</head>
<body>
    <%
        //创建cookie对象
        Cookie c1 = new Cookie("username","admin");
        Cookie c2 = new Cookie("password","123456");
        //过期时间
        c1.setMaxAge(60*5);
        //写入浏览器
        response.addCookie(c1);
        response.addCookie(c2);
        response.sendRedirect("Jsp11-1.jsp");
    %>
</body>
</html>
