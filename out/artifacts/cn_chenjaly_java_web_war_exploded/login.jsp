<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/24
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Boolean flag = (Boolean)request.getAttribute("flag");
        if (flag!=null&&flag==true){
            out.println("<script>alert('输入的账号密码错误')</script>");
        }
    %>
    <form name="form1" method="post" action="LoginServlet">
        <table border="0" align="center">
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type="password" name="password">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="登录">
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
