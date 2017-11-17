package com.muambyte.dao;

import java.util.List;

import com.muambyte.model.Product;

public interface ProductDao {
	
	void addProduct(Product product);
	
	Product getProductById(String id);
	
	List<Product> getAllProducts();
	
	void deleteProduct(String id);

}
