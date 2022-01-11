<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation</title>
</head>
<body>
<script>
	function checkForm() {
		alert('아이디 ' + document.frm.name.value + ' 입니다.');
	}
	
	function checkLogin() {
		var form = document.loginForm;
		
		if (form.id.value == "") {
			alert('아이디를 입력해주세요');
			form.id.focus();
			return false;
		} 
		if (form.passwd.value == "") {
			alert('패스워드를 입력해주세요');
			form.passwd.focus();
			return false;
		}
		
		if (form.id.value.length < 4 || form.id.value.length > 12) {
			alert('아이디는 4~12자 이내로 입력 가능합니다.');
			form.id.select();
			return false;
		}
		if (form.passwd.value.length < 4) {
			alert('패스워드는 4자 이상으로 입력해야 합니다!');
			form.passwd.select();
			return false;
		}
		
		if (isNaN(form.passwd.value)) {
			alert('패스워드는 숫자만 입력해야 합니다!');
			form.passwd.select();
			return false;
		}
		
		for (i=0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
        
			if ((ch<'a'||ch>'z') && (ch>'A'||ch<'Z') && (ch>'0'||ch<'9')) {
				alert("아이디는 영문 소문자로만 입력 가능 합니다!");
				form.id.select();
				return;
			}
		}
		
		form.submit();		// 서버로 전송
	}
</script>
	<form name="loginForm" method="post" action="validation2_process.jsp">
		<p>아이디 : <input type="text" name="id" />
		<p>패스워드 : <input type="password" name="passwd" />
		<p><input type="button" value="전송" onclick="checkLogin();" /> 
	</form>
</body>
</html>