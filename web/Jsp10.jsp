<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //统计网站的访问人数
        //int不是对象,可以封装成Integer对象
        Integer count = (Integer) application.getAttribute("count");
        if (count==null){
            //第一次访问
            count = 1;
        }else {
            count++;
        }
        application.setAttribute("count",count);
    %>
<strong>当前访客:<%=application.getAttribute("count")%></strong>
</body>
</html>
