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
	<jsp:useBean id="member" class="com.dto.MemberBean" />
	<%
		member.setId(1);
		out.println("id1 : " + member.getId());
	%>
</body>
</html>