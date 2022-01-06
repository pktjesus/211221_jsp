<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.*" %>    
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%
	MultipartRequest multi = new MultipartRequest(
			request, "C:\\upload", 5 * 1024 * 1024, "euc-kr", new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();
	while(params.hasMoreElements()) {
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
	}
	out.println("-----------------------<br>");
	
	Enumeration files = multi.getFileNames();
	while(files.hasMoreElements()) {
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String originalFilename = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		
		File file = multi.getFile(name);
		
		out.println("��û �Ķ���� �̸� : " + name + "<br>");
		out.println("���� ���� �̸� : " + originalFilename + "<br>");
		out.println("���� ���� �̸� : " + filename + "<br>");
		out.println("���� ������ Ÿ�� : " + type + "<br>");

		if (file != null) {
			out.println(" ���� ũ�� : " + file.length());
			out.println("<br>");
		}
	}
%>