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
		
		out.println("호스트명 : " + hostValue + "<br>");
		out.println("설정된 언어 : " + alValue + "<br>");
		out.println("인코딩 : " + aeValue + "<br>");
	%>
</body>
</html>