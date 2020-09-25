<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/17
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp06-2</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        if (username!=null){
            out.println("使用getRequestDispatcher重定向,可获取到信息,用户名为"+username);
        }else {
            out.println("使用sendRedirect转发,获取不到用户信息");
        }
    %>
</body>
</html>
