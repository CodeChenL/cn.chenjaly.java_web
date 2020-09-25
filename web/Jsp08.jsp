<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/9/22
  Time: 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp08</title>
</head>
<body>
<%--    一般来说登录成功后需要记录用户信息,如果将信息存放到request对象中,每次都要转发这个对象,
    所以一般使用session会话中    --%>
    <form name="form1" method="post" action="Jsp08-1.jsp">
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
