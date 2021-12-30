package com.dao;

import java.util.ArrayList;

import com.dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		// 폰에 대한 상품정보 저장
		Product phone = new Product("P1234", "iPhone 13 Pro", 1500000);
		phone.setDescription("5.7inch, 1550 x 950 Retina QHD display, 10mega pixel iSight camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("신상");

		// 노트북에 대한 상품정보 저장
		Product notebook = new Product("P1235", "LG PC 그램", 1800000);
		notebook.setDescription("IPS LED display, 5rd Generation, Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(500);
		notebook.setCondition("중고");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}
