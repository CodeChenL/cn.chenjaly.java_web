<%@ page import="jakarta.servlet.http.Cookie" %><%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/15
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username!=null&&username.length()!=0){
            Cookie c1 = new Cookie("username",username);
            Cookie c2 = new Cookie("password",password);
            c1.setMaxAge(5*60);
            c2.setMaxAge(5*60);
            response.addCookie(c1);
            response.addCookie(c2);
        }
        Cookie[] cookies = request.getCookies();
        if (cookies.length>0){
            for (Cookie cookie:cookies){
                if (cookie.getName().equals("username")){
                    username = cookie.getValue();
                }
            }
        }
    %>
<strong>
    欢迎!<%=username%>
</strong>
</body>
</html>
