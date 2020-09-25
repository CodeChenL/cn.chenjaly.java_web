<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/17
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp06-1</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin")&&password.equals("admin")) {
//            response.sendRedirect("Jsp06-2.jsp");
//            上面为重定向,下面为转发,转发可保留信息
            request.getRequestDispatcher("Jsp06-2.jsp").forward(request, response);

        }else {
            out.println("账号或密码错误,登录失败");
        }
    %>
</body>
</html>
