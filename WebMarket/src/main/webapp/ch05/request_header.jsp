<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<%
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");
		String aeValue = request.getHeader("Accept-Encoding");
		
		out.println("ȣ��Ʈ�� : " + hostValue + "<br>");
		out.println("������ ��� : " + alValue + "<br>");
		out.println("���ڵ� : " + aeValue + "<br>");
	%>
</body>
</html>