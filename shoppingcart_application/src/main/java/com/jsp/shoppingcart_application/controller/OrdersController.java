package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jsp.shoppingcart_application.dao.CartDao;
import com.jsp.shoppingcart_application.dao.CustomerDao;
import com.jsp.shoppingcart_application.dao.OrdersDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Cart;
import com.jsp.shoppingcart_application.dto.Customer;
import com.jsp.shoppingcart_application.dto.Item;
import com.jsp.shoppingcart_application.dto.Orders;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class OrdersController 
{

	@Autowired
	OrdersDao dao;
	
	@Autowired
	CustomerDao cdao;
	
	@Autowired
	ProductDao pdao;
	
	@Autowired
	CartDao cadao;
	
	@RequestMapping("/addorder")
	public ModelAndView addOrder()
	{
		Orders order=new Orders();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("ordersobj", order);
		mav.setViewName("ordersform");
		return mav;
	}
	@RequestMapping("/saveorder")
	public ModelAndView saveOrder(@ModelAttribute("/ordersobj")Orders o,HttpSession session)
	{
		Customer customer=(Customer)session.getAttribute("customerinfo");
		
		Customer c=cdao.findCustomerById(customer.getId());
		
		Cart cart=c.getCart();
		
		List<Item>items=cart.getItems();
		List<Item> cartitems=new ArrayList<Item>();
		List<Item> orderitems=new ArrayList<Item>();
		
		for(Item i:items)
		{
			Product p=pdao.findProductById(i.getPid());
			if(i.getQuantity()<p.getStock())
			{
				orderitems.add(i);
				p.setStock(p.getStock()-i.getQuantity());
				
				pdao.updateProduct(p);
			}
			else
			{
				cartitems.add(i);
			}
		}
		double cartTotalPrice=0;
		double orderTotalPrice=0;
		for(Item i:cartitems)
		{
			cartTotalPrice+=i.getPrice();
		}
		for(Item i:orderitems)
		{
			orderTotalPrice+=i.getPrice();
		}
		cart.setItems(cartitems);
		cart.setTotalPrice(cartTotalPrice);
		
		o.setItems(orderitems);
		o.setTotalPrice(orderTotalPrice);
		
		List<Orders>orders=c.getOrders();
		if(orders.size()>0)
		{
			orders.add(o);
			c.setOrders(orders);
		}
		else
		{
			List<Orders>order=new ArrayList<Orders>();
			order.add(o);
			c.setOrders(order);
		}
		cadao.updateCart(cart);
		dao.saveOrder(o);
		cdao.updateCustomer(c);

		ModelAndView mav=new ModelAndView();
		session.setAttribute("ordersdetails", o);
		mav.addObject("msg", "order placed succesfully");
		mav.setViewName("customerbill");
		return mav;
	}
	
}
