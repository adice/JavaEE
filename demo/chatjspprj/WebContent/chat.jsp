<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg = request.getParameter("msg");
		String name = session.getAttribute("myself").toString();
		String temp = name+"说："+msg;
		Object obj = application.getAttribute("msgs");
		List<String> list = null;
		if(obj==null){
			list = new ArrayList<String>();
		}else{
			list = (List<String>)obj;
		}
		list.add(temp);
		application.setAttribute("msgs", list);
		response.sendRedirect("send.jsp");
	%>
</body>
</html>