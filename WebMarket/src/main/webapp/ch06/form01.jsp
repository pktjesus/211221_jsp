<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form Processing</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="#" name="member" method="post">
		<p>	아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복검사">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p>	이름 : <input type="text" name="name">
		<p>	연락처 : <input type="text" maxlength="4" size="4" name="phone1">
			- <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성 
				<input	type="radio" name="sex" value="여성" >여성
		<p>	취미 : 독서<input type="checkbox" name="hobby1" checked>
				운동<input type="checkbox" name="hobby2"> 
				영화<input type="checkbox" name="hobby3">

		<p> 파일업로드: <input type="file" name="file1" />
		<p> <input type="button" name="btn1" value="버튼1">
		<p>	<input type="submit" value="가입하기"> 
			<input type="reset"	value="다시쓰기">
	</form>
</body>
</html>