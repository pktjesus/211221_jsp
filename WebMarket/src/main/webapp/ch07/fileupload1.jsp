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
		<p> 이름 : <input type="text" name="name" />
		<p> 제목 : <input type="text" name="title" />
		<p> 파일 : <input type="file" name="fileName" />
		<p> <input type="submit" value="전송" />
	</form>
</body>
</html>