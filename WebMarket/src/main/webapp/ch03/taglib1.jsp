<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
	<!-- String abc = "abc�Դϴ�" -->
	<c:set var="abc" value="abc�Դϴ�" />
	<!-- out.println -->
	<c:out value="${abc}" default="Jstl�Դϴ�"/>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:out value="${i}" /> 
	</c:forEach>
</body>
</html>