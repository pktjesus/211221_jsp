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
			<option value="�����">����Ư����</option>
			<option value="��⵵">��⵵</option>
			<option value="��õ��">��õ������</option>
			<option value="��û��">��û��</option>
			<option value="����">����</option>
			<option value="���">���</option>
		</select>
		<p><input type="submit" value="����"/>
	</form>
	
	<form action="#" name="member" method="post">
		<p>	���̵� : <input type="text" name="id"> <input type="button" value="���̵� �ߺ��˻�">
		<p>	��й�ȣ : <input type="password" name="passwd">
		<p>	�̸� : <input type="text" name="name">
		<p>	����ó : <select name="phone1">
				<option value="02">02</option>
				<option value="031">031</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p>	���� : <input type="radio" name="sex" value="����" checked>���� 
				<input	type="radio" name="sex" value="����" >����
		<p>	��� : ����<input type="checkbox" name="hobby1" checked>
				�<input type="checkbox" name="hobby2"> 
				��ȭ<input type="checkbox" name="hobby3">
		<p>	<input type="submit" value="�����ϱ�"> 
			<input type="reset"	value="�ٽþ���">
	</form>
</body>
</html>
