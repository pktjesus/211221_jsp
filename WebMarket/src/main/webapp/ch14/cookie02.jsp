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
		out.println("���� ������ ��Ű�� ���� => " + cookies.length + "<br>");
		out.println("==========================<br>");
		for (int i = 0; i < cookies.length; i++) {
			out.println("������ ��Ƽ�� �Ӽ� �̸� [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("������ ��Ű�� �Ӽ� �� [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("---------------------------------------------<br>");
		}
	%>
</body>
</html>