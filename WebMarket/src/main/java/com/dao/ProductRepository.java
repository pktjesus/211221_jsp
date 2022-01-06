package com.dao;

import java.util.ArrayList;

import com.dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = null;
	
	public static ProductRepository getInstance() {
		if (instance == null)
			instance = new ProductRepository();
		
		return instance;	
	}
	
	public ProductRepository() {
		// 폰에 대한 상품정보 저장
		Product phone = new Product("P1234", "iPhone 13 Pro", 1500000);
		phone.setDescription("5.7inch, 1550 x 950 Retina QHD display, 10mega pixel iSight camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("신상");
		phone.setFilename("P1234.png");

		// 노트북에 대한 상품정보 저장
		Product notebook = new Product("P1235", "LG PC 그램", 1800000);
		notebook.setDescription("IPS LED display, 5rd Generation, Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(500);
		notebook.setCondition("중고");
		notebook.setFilename("P1235.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			
			if(product != null && product.getProductId() != null
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
}
