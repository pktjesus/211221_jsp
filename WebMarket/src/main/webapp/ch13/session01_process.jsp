<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		// session.setMaxInactiveInterval(10);		// 10�� ���ȸ� ��������
	
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("���� ������ �����߽��ϴ�<br>");
			out.println(user_id+"�� ȯ���մϴ�");
		} else {
			out.println("���� ������ �����߽��ϴ�");
		}
	%>
</body>
</html>