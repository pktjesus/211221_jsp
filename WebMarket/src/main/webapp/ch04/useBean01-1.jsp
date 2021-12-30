<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<!-- 자바빈즈 사용 -->
	<jsp:useBean id="date" class="java.util.Date" />
	<p>
	<%
		out.println("오늘의 날짜 및 시각");
	%>
	</p>
	<p><%= date %>
</body>
</html>