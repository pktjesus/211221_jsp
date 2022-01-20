<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dto.Product" %>
<%@ page import="com.dao.ProductRepository" %>
<%
	// 실제 '장바구니'라는 세션을 만들어서 저장
	String id = request.getParameter("id");

	ProductRepository dao = ProductRepository.getInstance();
	
	ArrayList<Product> listOfProducts = dao.getAllProducts();
	
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartList");
	if (list == null) {		// '장바구니' 세션이 없을 때
		list = new ArrayList<Product>();
		session.setAttribute("cartList", list );
	}
	
	// 실제 장바구니에 상품을 넣는 로직 코드 작성
	
	
	
	//response.sendRedirect("product.jsp?id=" + id);		// 상세상품으로 가기
	response.sendRedirect("cart.jsp");			// 장바구니 페이지로 가기
%>