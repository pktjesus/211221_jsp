<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form Processing</title>
</head>
<body>
	<h3>ȸ������</h3>
	<form action="#" name="member" method="post">
		<p>	���̵� : <input type="text" name="id"> <input type="button" value="���̵� �ߺ��˻�">
		<p>	��й�ȣ : <input type="password" name="passwd">
		<p>	�̸� : <input type="text" name="name">
		<p>	����ó : <input type="text" maxlength="4" size="4" name="phone1">
			- <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p> ���� : <input type="radio" name="sex" value="����" checked>���� 
				<input	type="radio" name="sex" value="����" >����
		<p>	��� : ����<input type="checkbox" name="hobby1" checked>
				�<input type="checkbox" name="hobby2"> 
				��ȭ<input type="checkbox" name="hobby3">

		<p> ���Ͼ��ε�: <input type="file" name="file1" />
		<p> <input type="button" name="btn1" value="��ư1">
		<p>	<input type="submit" value="�����ϱ�"> 
			<input type="reset"	value="�ٽþ���">
	</form>
</body>
</html>