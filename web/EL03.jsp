<%--
  Created by IntelliJ IDEA.
  User: 25407
  Date: 2020/10/25
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form name="form1" method="get" action="EL04.jsp">
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
                <td>业余爱好</td>
                <td>
                    <input type="checkbox" name="channel" value="看书">看书
                    <input type="checkbox" name="channel" value="玩游戏">玩游戏
                    <input type="checkbox" name="channel" value="旅游">旅游
                    <input type="checkbox" name="channel" value="看电视">看电视
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="提交">
                </td>
                <td>
                    <input type="reset" value="取消">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
