<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%! 
		// eclipse 한줄주석 단축키 ctrl + shift + c
		int count = 3;
		
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>
	<%
// 		count = count + 1;
// 		out.println("count : " + count);
		for (int i = 1; i <= count; i++) {
			out.println("Java Server Pages " + i + ".<br>");  // jsp-api.jar파일에 존재 -> javax.servlet.jsp.JspWriter out = new JspWriter();
			
		}
	%>
	<%= count %>
	<%
		out.println("<br>");
	%>
	<%= makeItLower("Hello world") %>
</body>
</html>