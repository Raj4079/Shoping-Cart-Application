package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.MerchantDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDao dao;
	
	@Autowired
	MerchantDao mdao;
	@RequestMapping("/addproduct")
	public ModelAndView addProduct()
	{
		Product product=new Product();
		ModelAndView mav=new ModelAndView();
		mav.addObject("productobj", product);
		mav.setViewName("productform");
		return mav;
	}
	
	@RequestMapping("/saveproducts")
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product p,HttpSession session)
	{
		
		Merchant m=(Merchant)session.getAttribute("merchantinfo");
		List<Product>product=m.getProducts();
		
		if(product.size()>0)
		{
			product.add(p);
			m.setProducts(product);
		}
		else
		{
			List<Product>products=new ArrayList<Product>();
			products.add(p);
			m.setProducts(products);
		}
		
		dao.saveProduct(p);
		mdao.updateMerchant(m);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","product saved succesfully");
		mav.setViewName("merchantoptions");
		return mav;
	}
	
	@RequestMapping("/viewallproducts")
	public ModelAndView viewAllProduct(HttpSession session)
	{
		Merchant m=(Merchant)session.getAttribute("merchantinfo");
		Merchant merchant=mdao.findMerchantById(m.getId());
		List<Product>product=merchant.getProducts();
		ModelAndView mav=new ModelAndView();
		mav.addObject("productlist", product);
		mav.setViewName("viewallproduct");
		return mav;
	}
	
	@RequestMapping("/fetchallproducts")
	public ModelAndView fetchAllProducts()
	{
		List<Product>products=dao.findAllProducts();
		ModelAndView mav=new ModelAndView();
		mav.addObject("productslist", products);
		mav.setViewName("displayallproducts");
		return mav;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam("id")int pid, HttpSession session)
	{
		Merchant m=(Merchant)session.getAttribute("merchantinfo");
		Merchant merchant=dao.removeProductFromMerchant(m.getId(), pid);//this method is used to remove the relationship between product and merchanat
		mdao.updateMerchant(merchant);
		
		dao.deleteProductById(pid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect://viewallproducts");
		return mav;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateProduct(@RequestParam("id")int id)
	{
		Product p=dao.findProductById(id);
		ModelAndView mav=new ModelAndView();
		mav.addObject("prodobj", p);
		mav.setViewName("updateform");
		return mav;
	}
	
	@RequestMapping("/newupdateform")
	public ModelAndView newUpdate(@ModelAttribute("prodobj")Product p)
	{
		dao.updateProduct(p);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect://viewallproducts");
		return mav;
	}
	
	
	
}


//in saveproduct url first we will save the data in http session because to find which merchant is try to add product and later we will update the merchant
//in Model And View the data can share only in one request
//in Http session the data will share throught the application even if htere is multiple request