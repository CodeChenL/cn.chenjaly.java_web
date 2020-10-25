<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/25
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <br>
    注册成功:${param.username}
    <br>
    密码:${param.password}
    <br>
    业余爱好:${paramValues.channel[0]}.${paramValues.channel[1]}.${paramValues.channel[2]}.${paramValues.channel[3]}
</body>
</html>
