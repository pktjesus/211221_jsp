<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dto.Product" %>    
<%@ page import="com.dao.ProductRepository" %>
<%@ page import="com.oreilly.servlet.*" %>    
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	MultipartRequest multi = new MultipartRequest(
		request, "D:\\jsp_project\\WebMarket\\src\\main\\webapp\\resources\\images", 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
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
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	Product product = new Product();
	product.setProductId(productId);
	product.setPname(name);
	product.setUnitPrice(price);
	product.setDescription(description);
	product.setManufacturer(manufacturer);
	product.setUnitsInStock(stock);
	product.setCondition(condition);
	product.setFilename(fileName);
	
	dao.addProduct(product);
	
	response.sendRedirect("products.jsp");
%>