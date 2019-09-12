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
		String nickname = request.getParameter("nickname");
		Object obj = application.getAttribute("users");
		if(obj==null){
			List<String> list = new ArrayList<String>();
			list.add(nickname);
			application.setAttribute("users", list);
			session.setAttribute("myself", nickname);
			response.sendRedirect("main.jsp");
		}else{
			List<String> list = (List<String>)obj;
			if(list.contains(nickname)){
				request.setAttribute("errormsg", "您的昵称已被人使用，请换一个！");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else{
				list.add(nickname);
				application.setAttribute("users", list);
				session.setAttribute("myself", nickname);
				response.sendRedirect("main.jsp");
			}
		}
	%>
</body>
</html>