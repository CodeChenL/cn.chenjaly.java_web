<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Jsp05-1.jsp">
		<table border="0" align="center">
			<tr><td>用户名<input type="text" name="name"></td></tr>
			<tr><td>密码<input type="password" name="pwd"></td></tr>
			<tr>
				<td>信息来源
					<input type="checkbox" name="channel" value="报刊">报刊
					<input type="checkbox" name="channel" value="网络">网络
					<input type="checkbox" name="channel" value="朋友推荐">朋友推荐
					<input type="checkbox" name="channel" value="电视">电视
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="提交">
					<input type="reset" value="重复">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>