package com.portal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.portal.model.Blog;
import com.portal.model.Forum;
import com.portal.service.BlogService;
import com.portal.service.ForumService;

@Controller
public class PortalController {
	
	@Autowired
	BlogService blogService;
	
	@Autowired
	ForumService forumService;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	
	@RequestMapping("/index")
	public String homePage() {
		return "index";
	}
	
	
	@RequestMapping("/blog")
	public String blog(@ModelAttribute("blo") Blog blo,Model m)
	{
		List<Blog> blogLt= blogService.getList();
		m.addAttribute("blogList", blogLt);
	return "blog";	
	}
	
	@RequestMapping("/forum")
	public String forum(@ModelAttribute("frum") Forum frum,Model m)
	{
		List<Blog> forumLt= forumService.getList();
		m.addAttribute("forumList", forumLt);
	return "forum";	
	}
	
	@RequestMapping("/signin")
	public String gotosignin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "signin";
  	}

}
