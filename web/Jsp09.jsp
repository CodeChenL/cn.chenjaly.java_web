<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //这是一段判断登录状态的代码,
        String username = (String) session.getAttribute("name");
        //如果用户没有登录,用户名则为空
        if (username==null){
            response.sendRedirect("Jsp08.jsp");
            return;
        }
    %>
</body>
</html>
