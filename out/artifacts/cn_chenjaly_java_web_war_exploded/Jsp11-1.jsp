<%@ page import="jakarta.servlet.http.Cookie" %><%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/15
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //取出cookie
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies){
            if (cookie.getName().equals("username")){
                out.println("cookie的时效是"+cookie.getMaxAge()+"<br>");
                out.println("用户的账号是"+cookie.getValue());
            }
        }
    %>
</body>
</html>
