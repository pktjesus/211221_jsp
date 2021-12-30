<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="member" class="com.dto.MemberBean" scope="page" />
	<jsp:setProperty name="member" property="id" value="1100" />
	<jsp:setProperty name="member" property="name" value="강감찬" />
	<p> 아이디 : <jsp:getProperty property="id" name="member" />
	<p> 이름 : <jsp:getProperty property="name" name="member" />
</body>
</html>