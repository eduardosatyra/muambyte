package com.muambyte.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.muambyte.dao.ProductDao;
import com.muambyte.model.Product;

@Controller
public class HomeController {
	
	private Path path;
	
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
		product.setProductCategory("eletronicos");
		product.setProductCondition("novo");
		product.setProductStatus("ativo");
		
		model.addAttribute("product", product);		
		
		
		return "addProduto";
	}
	
	@RequestMapping(value = "/admin/inventarioProduto/addProduto", method = RequestMethod.POST)
	public String addProductPost(@ModelAttribute("product") Product product, HttpServletRequest request) {
		productDao.addProduct(product);
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");
		
		if(productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(path.toString()));
			}catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Falha ao salvar imagem do produto", e);
			}
		}
		
		return "redirect:/admin/inventarioProduto";
	}
	
	
	
}
