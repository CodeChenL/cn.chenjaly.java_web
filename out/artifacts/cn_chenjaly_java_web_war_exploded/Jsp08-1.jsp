<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp08-1</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin")&&password.equals("admin")){
            //如果登录成功,把信息存进session
            //session.setAttribut(),第一个参数是名称,第二个参数是存入内容
            session.setAttribute("name",username);
            session.setAttribute("password",password);
            //以往重定向不能传递用户请求,但是我们可以把信息存入session中
            response.sendRedirect("Jsp08-2.jsp");
        }else {
            out.println("账号或密码错误");
        }
    %>
</body>
</html>
