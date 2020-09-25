<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Jsp06</title>
    </head>
    <body>
        <form name="forml" method="post" action="Jsp06-1.jsp">
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
        </form>
    </body>
</html>