<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames();
		int i = 0;

		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("������ ������ �Ӽ� �̸� [ " + i + " ] : " + name + "<br>");
			out.println("������ ������ �Ӽ� �� [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>