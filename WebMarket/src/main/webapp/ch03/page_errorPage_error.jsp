<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Directive test</title>
</head>
<body>
	<h4>errorPage ��Ƽ�� �±�</h4>
	������ �߻��߽��ϴ�.<br><br>
	<%
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>