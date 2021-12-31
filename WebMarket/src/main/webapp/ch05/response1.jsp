<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Object</title>
</head>
<body>
<jsp:forward page="http://www.naver.com" />
	<%
		// response.sendRedirect("http://www.naver.com");
	%>
</body>
</html>