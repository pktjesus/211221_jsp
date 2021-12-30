<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="" %>
<%-- <%@ page import="java.io.*" %> --%>
<%-- <%@ page import="java.util.Date" %> --%>
<%@ page import="java.io.*, java.util.Date" %>
<html>
<head>
</head>
<body>
<%
	for(int i = 0; i <= 10; i++) {
		if(i % 2 == 0) {
			out.println(i + "<br>");
		}
	}
%>
<%!
	int count = 3;
%>
<p>Today's date : <%= new Date() %></p>
<!-- <p>count : <% out.println("<h1>test100</h1>"); %></p> -->
<%-- <p>count : <% out.println("<h1>test100</h1>"); %></p> --%>
<%--  <h1>test1</h1> --%>
<!--  <h1>test1</h1> --> 
</body>
</html>