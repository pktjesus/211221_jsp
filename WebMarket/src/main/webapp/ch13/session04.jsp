<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<title>Session</title>
</head>
<body>
	<p><h4>----- ������ �����ϱ� �� -----</h4>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		out.println("������ ���� �̸� userID : " + user_id + "<br>");
		out.println("������ ���� �� userPW : " + user_pw + "<br>");

		session.removeAttribute("userID");		// sessionŰ �̸� ��ҹ��� ����
	%>
	<p><h4>----- ������ ������ �� -----</h4>
	<%
		user_id = (String) session.getAttribute("userID");
		user_pw = (String) session.getAttribute("userPW");
		out.println("������ ���� �̸� userID : " + user_id + "<br>");
		out.println("������ ���� �� userPW : " + user_pw + "<br>");
	%>
</body>
</html>