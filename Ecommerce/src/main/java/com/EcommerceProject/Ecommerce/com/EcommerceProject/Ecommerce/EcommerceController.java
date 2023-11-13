package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;



@Controller
public class EcommerceController {
	
	@Autowired
	iRegister ir;
	@Autowired
	iproduct ip; 
	@Autowired
	icart ic;
	
	
	
	@RequestMapping("home")
	public ModelAndView home(ModelMap mp)
	{
		mp.put("obj", ip.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("home.jsp");
		
	    return mv;
	}
	
	
	@RequestMapping("addproduct")
	public String addproduct()
	{
		return "addproduct.jsp";
	}

	@RequestMapping("singlepage")
	public String singlepage()
	{
		return "singlepage.jsp";
	}
	
	@RequestMapping("login")
	public String login()
	{
		return "login.jsp";
	}
	
	@RequestMapping("logout")
	public String logout()
	{
		return "logout.jsp";
	}
	
	@RequestMapping("about")
	public String about() {
		return "about.jsp";
	}
	
	
	
	

	// Signup
	@RequestMapping("registeration")
	public String register(String name, String email, String password)
	{
		Register r1 = new Register();		
		r1.setName(name);
		r1.setEmail(email);
		r1.setPassword(password);
		ir.save(r1);
		return "redirect:/login";	
		
	}	
	
	
	
// Add product

	@RequestMapping(value = "/additems", method = RequestMethod.GET)
	public String addproduct(String name, String description, String imageUrl, float price, int size)
	{
		product p1 = new product();
		
		p1.setName(name);
		p1.setDescription(description);
		p1.setImageUrl(imageUrl);
		p1.setPrice(price);
		p1.setSize(size);		
		ir.save(p1);		
		return "redirect:/product";	
		
	}
	
	
	
	
// Login
//	@RequestMapping(value="log", method=RequestMethod.POST)
//	public String login(String email, String password) {
//		Register user = ir.findByEmail(email);
//		if(user != null && user.getPassword().equals(password)) {
//			return "redirect:/home";
//		}else {
//			return "login";
//		}
//	}
	
		
	
	
// Data Fetch
	@RequestMapping("product")
	public ModelAndView products(ModelMap mp)
	{
	mp.put("obj", ip.findAll());
	ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
	mv.setViewName("product.jsp");
	
	return mv;
}
	
// login
	
	@RequestMapping(value = "log", method = RequestMethod.POST)
	public ModelAndView login(HttpSession session, String email, String password)
	{
		Register user = ir.findByEmail(email);
		if(user != null && user.getPassword().equals(password)) {
			int i = ic.countByRegister_id(user.getid());
			ModelAndView mv = new ModelAndView();
			mv.addObject("qty", i);
			mv.setViewName("home");
			session.setAttribute("eid", email);
			return mv;
		}else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("login.jsp");
			return mv;
		}
	}
	
	
	//Add to cart
		@RequestMapping("addcart")
		public String addcart(int id, String email)
		{
			Register r1 = ir.findByEmail(email);
			product p1 = ip.findById(id);
			
			if (p1 != null)
			{
				cart c = new cart(p1, r1);
				ic.save(c);
			}
			return "cart";
		}
	
		
//		all cart
		
		@RequestMapping("cart")
		public ModelAndView cart(ModelMap mp, String email)
		{
			Register r1 = ir.findByEmail(email);
			int id = r1.getid();
			
			mp.put("car", ic.findAllByRegister_id(id));
			ModelAndView mv = new ModelAndView();
			mv.addAllObjects(mp);
			
			mv.setViewName("cart.jsp");
			return mv;
		}
	
	
		
//		For delete the data
		@RequestMapping("remove")
		public String remove(int id)
		{
			ic.deleteById(id);
			return "home";
		}
		
		
	
}






