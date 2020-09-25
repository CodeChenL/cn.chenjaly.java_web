<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp07</title>
</head>
<body>
    <%
        //获取本次对话的sessionID
        String sessionID = session.getId();
        out.println("当前会话的sessionID是:"+sessionID);
        //查看系统默认的sessionID过期时间
        out.println("<br>session的过期时间"+session.getMaxInactiveInterval());
    %>
</body>
</html>
