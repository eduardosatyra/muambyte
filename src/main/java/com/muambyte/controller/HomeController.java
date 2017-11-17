package com.muambyte.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.muambyte.dao.ProductDao;
import com.muambyte.model.Product;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("listaDeProdutos")
	public String getProducts(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		
		return "listaDeProdutos";
	}
	
	@RequestMapping("listaDeProdutos/detalheProduto/{productId}")
	public String detalheProduto(@PathVariable String productId, Model model) throws IOException {
		
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "detalheProduto";
		
	}
	
	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
		
	}
	
	@RequestMapping("/admin/inventarioProduto")
	public String inventarioProduto(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		
		return "inventarioProduto";
	}
	
	@RequestMapping("/admin/inventarioProduto/addProduto")
	public String addProduto(Model model) {
		Product product = new Product();
		product.setProductCategory("smartphone");
		product.setProductCondition("Novo");
		product.setProductStatus("Ativo");
		
		model.addAttribute("product", product);
		
		
		
		return "addProduto";
	}
	
}
