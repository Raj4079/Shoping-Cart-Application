package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.CartDao;
import com.jsp.shoppingcart_application.dao.ItemDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Cart;
import com.jsp.shoppingcart_application.dto.Customer;
import com.jsp.shoppingcart_application.dto.Item;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class ItemController 
{
	@Autowired
	ProductDao dao;
	
	@Autowired
	ItemDao idao;
	
	@Autowired
	CartDao cdao;
	
	@RequestMapping("/additem")
	public ModelAndView addItem(@RequestParam("id")int pid)
	{
		Product p=dao.findProductById(pid);
		
		Item i=new Item();//we create this object for customer point of view
		i.setBrand(p.getBrand());
		i.setCategory(p.getCategory());
		i.setPrice(p.getPrice());
		i.setPid(p.getId());
		

		ModelAndView mav=new ModelAndView();
		mav.addObject("itemobj", i);
		mav.setViewName("itemform");
		return mav;
	}
	
	@RequestMapping("/additemtocart")
	public ModelAndView addItemToCart(@ModelAttribute("itemobj")Item i,HttpSession session)
	{
		i.setPrice(i.getQuantity()*i.getPrice());
		Customer customer=(Customer)session.getAttribute("customerinfo");
		Cart cart=customer.getCart();
		
		cart.setName(customer.getName());
		
		List<Item>items=cart.getItems();
		if(items.size()>0)
		{
			items.add(i);
			cart.setItems(items);
			cart.setTotalPrice(cart.getTotalPrice()+i.getPrice());
		}
		else
		{
			List<Item>item=new ArrayList<Item>();
			item.add(i);
			cart.setTotalPrice(i.getPrice());
			cart.setItems(item);
			
		}
		idao.saveItem(i);
		cdao.updateCart(cart);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect://fetchallproducts");
		return mav;
	}
	
	
}

//in item table w euse product id because whenever customer buy a item we need to reduce the stock frokm stock
//product entity class is for merchant.
//item entity class is for customer
//merchant will not add the item because merchant doesnot required the quantity and the product id.