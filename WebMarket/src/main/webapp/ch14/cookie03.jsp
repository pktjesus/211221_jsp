<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			cookies[i].setMaxAge(10);		// ��Ű ���� ������ �ִ� ȿ��
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>