<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<p> <h4>----- ���� ��ȿ �ð� ���� �� -----</h4>
	<%
		int time = session.getMaxInactiveInterval() / 60;		// �⺻�� 1,800��

		out.println("���� ��ȿ �ð�  : " + time + "��<br>");
	%>
	<p>	<h4>----- ���� ��ȿ �ð� ���� �� -----</h4>
	<%
		session.setMaxInactiveInterval(60 * 60);
		time = session.getMaxInactiveInterval() / 60;

		out.println("���� ��ȿ �ð�  : " + time + "��<br>");
	%>
</body>
</html>