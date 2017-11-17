package com;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dao.SupplierDAO;

public class IndexController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@RequestMapping("/productCustList")
	public ModelAndView productcustList(@RequestParam("catid") int catid)
	{
		System.out.println(catid);
		ModelAndView mav=new ModelAndView();
		mav.addObject("productList",productDAO.getProduct(catid));
		mav.setViewName("ProductCustomerList");
		return mav;
	}
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("catList",categoryDAO.retrieveCategory());
		m.addAttribute("supList",supplierDAO.retrieveSupplier());
		m.addAttribute("prodList",productDAO.retrieveProduct());
	}
}
