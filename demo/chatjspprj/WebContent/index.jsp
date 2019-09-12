<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="post">
		<input type="text" name="nickname" />
		<%
			Object msg = request.getAttribute("errormsg");
			if(msg!=null)
				out.println(msg);
		%>
		<input type="submit" value="登录" />
	</form>
</body>
</html>