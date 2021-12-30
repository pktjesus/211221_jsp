<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.Date" %>    
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%!
		String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
		String tagline = "Welcome to Web Market!";
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();			// 24시로 표현
				int minute = day.getMinutes();		// 0~59분까지 표현
				int second = day.getSeconds();		// 0~59초까지 표현
				
				String CT = hour + ":" + minute + ":" + second;
				out.println("현재 접속 시각: " + CT); 
			%>
		</div>
		<hr>
	</div>	
	
	<%@ include file="footer.jsp" %>
</body>
</html>