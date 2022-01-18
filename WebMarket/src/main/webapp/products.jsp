<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dto.Product" %>    
<%@ page import="com.dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="com.dao.ProductRepository" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록들</h1>
		</div>
	</div>
	<%
		//ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
		<%
			for(int i=0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
		%>
		<div class="col-md-6">
			<img src="./resources/images/<%=product.getFilename()%>" style="width:100%" />
<%-- 			<img src="C://upload//<%=product.getFilename()%>" style="width:100%" /> --%>
			<h3><%= product.getPname() %></h3>
			<p><%= product.getDescription() %>
			<p><%= product.getUnitPrice() %>원
			<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상세정보</a>
		</div>
		<%
			}
		%>
		</div>
	</div>		
	<jsp:include page="footer.jsp" />
</body>
</html>