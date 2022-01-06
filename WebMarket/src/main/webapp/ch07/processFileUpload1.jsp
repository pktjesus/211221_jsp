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
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + originalFilename + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 타입 : " + type + "<br>");

		if (file != null) {
			out.println(" 파일 크기 : " + file.length());
			out.println("<br>");
		}
	}
%>