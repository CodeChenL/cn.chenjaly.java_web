<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/25
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("name","张三");
        pageContext.setAttribute("name","李四");
    %>
    <h1>欢迎:${name}</h1>
    <h1>欢迎:page作用域的${pageScope.name}</h1>
    <h1>欢迎:request作用域的${requestScope.name}</h1>
</body>
</html>
