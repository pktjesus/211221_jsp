<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File Upload</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="processFileUpload1.jsp">
		<p> �̸� : <input type="text" name="name" />
		<p> ���� : <input type="text" name="title" />
		<p> ���� : <input type="file" name="fileName" />
		<p> <input type="submit" value="����" />
	</form>
</body>
</html>