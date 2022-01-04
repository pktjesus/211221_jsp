<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form Processing</title>
</head>
<body>
	<form action="#" name="member2">
		<p><select name="city" size="5" multiple>
			<option value="서울시">서울특별시</option>
			<option value="경기도">경기도</option>
			<option value="인천시">인천광역시</option>
			<option value="충청도">충청도</option>
			<option value="전라도">전라도</option>
			<option value="경상도">경상도</option>
		</select>
		<p><input type="submit" value="전송"/>
	</form>
	
	<form action="#" name="member" method="post">
		<p>	아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복검사">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p>	이름 : <input type="text" name="name">
		<p>	연락처 : <select name="phone1">
				<option value="02">02</option>
				<option value="031">031</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p>	성별 : <input type="radio" name="sex" value="남성" checked>남성 
				<input	type="radio" name="sex" value="여성" >여성
		<p>	취미 : 독서<input type="checkbox" name="hobby1" checked>
				운동<input type="checkbox" name="hobby2"> 
				영화<input type="checkbox" name="hobby3">
		<p>	<input type="submit" value="가입하기"> 
			<input type="reset"	value="다시쓰기">
	</form>
</body>
</html>
