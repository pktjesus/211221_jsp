<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dto.Product" %>    
<%@ page import="com.dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");

	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	Integer price;
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock = 0L;
	else
		stock = Long.valueOf(unitsInStock);
	
	ProductRepository dao = ProductRepository.getInstance();
	Product product = new Product();
	product.setProductId(productId);
	product.setPname(name);
	product.setUnitPrice(price);
	product.setDescription(description);
	product.setManufacturer(manufacturer);
	product.setUnitsInStock(stock);
	product.setCondition(condition);
	
	dao.addProduct(product);
	
	response.sendRedirect("products.jsp");
%>