package com.muambyte.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.muambyte.dao.ProductDao;
import com.muambyte.model.Product;

@Controller
public class HomeController {
	
	private ProductDao productDao = new ProductDao();
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("listaDeProdutos")
	public String getProducts(Model model) {
		List<Product> products = productDao.getProductList();
		model.addAttribute("products", products);
		
		return "listaDeProdutos";
	}
	
	@RequestMapping("listaDeProdutos/detalheProduto/{productId}")
	public String detalheProduto(@PathVariable String productId, Model model) throws IOException {
		
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "detalheProduto";
		
	}
}
