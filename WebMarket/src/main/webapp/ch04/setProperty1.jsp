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
	<jsp:setProperty name="member" property="id" value="1000" />
	<jsp:setProperty name="member" property="name" value="홍길동" />
	<p> 아이디 : <% out.println(member.getId()); %> 
	<p> 이름 : <% out.println(member.getName()); %>
</body>
</html>