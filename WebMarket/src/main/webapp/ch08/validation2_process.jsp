<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<h3>입력에 성공하였습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("passwd");
	%>
	<p> 아이디 : <%=id%>
	<p> 패스워드 : <%=password%>
</body>
</html>