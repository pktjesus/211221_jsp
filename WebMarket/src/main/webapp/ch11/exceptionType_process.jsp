<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exception</title>
</head>
<body>
	<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int intNum1 = Integer.parseInt(num1);		// ���ڸ� ���ڷ� ��ȯ
		int intNum2 = Integer.parseInt(num2);		// ���ڸ� ���ڷ� ��ȯ
		int divideResult = intNum1 / intNum2;		// intNum2�� 0�̶�� exception_error.jsp�� �̵�
		out.println(intNum1 + " / " + intNum2 + " = " + divideResult);
	%>
</body>
</html>