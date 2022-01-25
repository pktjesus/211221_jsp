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
	
	Product goods = new Product();
	for (int i = 0; i < listOfProducts.size(); i++) {
		goods = listOfProducts.get(i);
		if (goods.getProductId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartList");
	if (list == null) {		// '장바구니' 세션이 없을 때
		list = new ArrayList<Product>();
		session.setAttribute("cartList", list );
	}
	
	// 실제 장바구니에 상품을 넣는 로직 코드 작성
	int cnt = 0;
	Product goodsQnt = new Product();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}
	
	
	//response.sendRedirect("product.jsp?id=" + id);		// 상세상품으로 가기
	response.sendRedirect("cart.jsp");			// 장바구니 페이지로 가기
%>