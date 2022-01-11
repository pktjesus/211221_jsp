<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation</title>
</head>
<body>
<script>
	function checkForm() {
		alert('이름은 ' + document.frm.name.value + ' 입니다.');
	}
</script>
	<form name="frm" method="get">
		<p>
			이 름 : <input type="text" name="name" />
			<input type="submit" value="전송" onclick="checkForm()" /> 
	</form>
</body>
</html>