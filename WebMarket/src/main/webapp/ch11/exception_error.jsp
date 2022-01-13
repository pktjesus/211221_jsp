<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p>	예외 : <%=exception%>
	<p>	toString() : <%=exception.toString()%>
	<p>	getClass().getName() :	<%=exception.getClass().getName()%>
	<p>	getMessage() :	<%=exception.getMessage()%>
</body>
</html>