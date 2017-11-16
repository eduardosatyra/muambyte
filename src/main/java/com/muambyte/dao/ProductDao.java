package com.muambyte.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.muambyte.model.Product;

public class ProductDao {

	private List<Product> productList;
	
	public List<Product> getProductList(){
		
		Product product1 = new Product();
		product1.setProductId("1");
		product1.setProductName("iPhone 8 ");
		product1.setProductCategory("smartphone");
		product1.setProductDescription("O melhor celular já visto pelos olhos");
		product1.setProductPrice(5000);
		product1.setProductCondition("Novo!");
		product1.setProductStatus("Disponivel");
		product1.setUnitInStock(500);
		product1.setProductManufacturer("Apple");
		
		
		Product product2 = new Product();
		product2.setProductId("2");
		product2.setProductName("Record2");
		product2.setProductCategory("Record2");
		product2.setProductDescription("Testing persistency on the bank");
		product2.setProductPrice(300);
		product2.setProductCondition("Record2");
		product2.setProductStatus("Availble");
		product2.setUnitInStock(2);
		product2.setProductManufacturer("Record2");
		
		Product product3 = new Product();
		product3.setProductId("3");
		product3.setProductName("Record3");
		product3.setProductCategory("Record3");
		product3.setProductDescription("Testing persistency on the bank");
		product3.setProductPrice(300);
		product3.setProductCondition("Record3");
		product3.setProductStatus("Availble");
		product3.setUnitInStock(2);
		product3.setProductManufacturer("Record3");
		
		productList = new ArrayList<Product>();
		productList.add(product1);
		productList.add(product2);
		productList.add(product3);
		
		return productList;
	}
	
	public Product getProductById(String productId) throws IOException{
		for (Product product: getProductList()) {
			if(product.getProductId().equals(productId)) {
				return product;
			}			
		}
		
		throw new IOException("Nenhum produto encontrado");
	}
	
}
