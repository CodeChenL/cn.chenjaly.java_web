<%@ page import="java.awt.*" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/25
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList names = new ArrayList();
        names.add(0,"LiYang");
        names.add(1,"WangHua");
        request.setAttribute("names",names);
    %>
    <h2>使用Jsp获取数组</h2>
    <%=request.getAttribute("names")%>
    <h2>使用EL表达式获取</h2>
    ${names}
    <h2>从数组逐个取出</h2>
    ${names[0]}${names[1]}
</body>
</html>
