package com.jsp.shoppingcart_application.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.MerchantDao;
import com.jsp.shoppingcart_application.dto.Merchant;

@Controller
public class MerchantController
{
	@Autowired
	MerchantDao dao;
	
	@RequestMapping("/addmerchant")
	public ModelAndView addMerchant()
	{
		Merchant m=new Merchant();
		ModelAndView mav=new ModelAndView();
		mav.addObject("merchantobj", m);
		mav.setViewName("merchantform");
		return mav;
	}
	
	@RequestMapping("/savemerchant")
	public ModelAndView saveMerchant(@ModelAttribute("merchantobj") Merchant m)
	{
		dao.saveMerchant(m);
		ModelAndView mav=new ModelAndView();
		mav.addObject("smsg", "Merchant get Register succesfully");
		mav.setViewName("merchantloginform");
		return mav;
	}
	
	@RequestMapping("/validatemerchant")
	public ModelAndView merchantLoginValidation(ServletRequest req, HttpSession session)
	{
		String email=req.getParameter("email");
		String Password=req.getParameter("password");
		Merchant m=dao.findMerchantByEmailAndPassword(email, Password);
	
		if(m!=null)
		{
			ModelAndView mav=new ModelAndView();
			session.setAttribute("merchantinfo", m);
			mav.setViewName("merchantoptions");
			return mav;
		}
		else
		{
			ModelAndView mav=new ModelAndView();
			mav.addObject("imsg", "invalid credentials");
			mav.setViewName("merchantloginform");
			return mav;
		}
	}
	
	@RequestMapping("/merchantlogout")
	public ModelAndView merchantLogout(HttpSession session) {
		    session.invalidate() ;
		    ModelAndView mav = new ModelAndView() ;
		    mav.setViewName("index") ;
		    return mav ;
	}
}
