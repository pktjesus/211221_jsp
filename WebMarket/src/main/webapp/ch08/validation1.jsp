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
		alert('�̸��� ' + document.frm.name.value + ' �Դϴ�.');
	}
</script>
	<form name="frm" method="get">
		<p>
			�� �� : <input type="text" name="name" />
			<input type="submit" value="����" onclick="checkForm()" /> 
	</form>
</body>
</html>