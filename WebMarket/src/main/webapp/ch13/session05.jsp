<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<p> <h4>----- ������ �����ϱ� �� -----</h4>

	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames();
		int i = 0;

		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("������ ���� �̸� [ " + i + " ] : " + name + "<br>");
			out.println("������ ���� �� [ " + i + " ] : " + value + "<br>");
		}

		session.removeAttribute("userID");
	%>

	<p> <h4>----- ������ ������ �� -----</h4>
	<%
		en = session.getAttributeNames();

		i = 0;
		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("������ ���� �̸� [ " + i + " ] : " + name + "<br>");
			out.println("������ ���� �� [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>