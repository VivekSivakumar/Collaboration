package com.chatapplication.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ChatController {

	public ChatController() {
		
		System.out.println("inside  controller");
	}



	@RequestMapping("/")
	public String homePage() {
		return "Home";
	}

	
	@RequestMapping("/Home")
	public String gotoHome() {
		return "Home";
	}

	@RequestMapping("/Signin")
	public String gotoSignin() {
		return "Signin";
	}

	@RequestMapping("/Signup")
	public String gotoSignup() {
		return "Signup";
	}

	@RequestMapping("/Aboutus")
	public String gotoAboutus() {
		return "Aboutus";
	}
	
}