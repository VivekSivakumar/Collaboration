package com.portal.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portal.model.Forum;
import com.portal.model.Reply;
import com.portal.service.AnswerService;
import com.portal.service.ForumService;

import com.google.gson.Gson;

@Controller
public class ForumController {

	@Autowired
	ForumService forumService;
	
	
	@Autowired
	AnswerService answerService;
	

	
	public ForumController() {
		super();
		System.out.println("forum ctrl");
	}

	@RequestMapping("/addForum")
	public ModelAndView toForum(@ModelAttribute("frum")Forum frum)
	{
		return new ModelAndView("addForum");
	}
	
	@RequestMapping(value="/forum1",method=RequestMethod.POST)
	public ModelAndView toCreateForum(@ModelAttribute("frum")Forum frum)
	{
		frum.setCreationDate(new Date());
		forumService.insertRow(frum);
		return new ModelAndView("forum");
	}
	
	@RequestMapping("/forumlist")
	public ModelAndView toListForum(@ModelAttribute("frum")Forum frum,Model m)
	{
		
		List<Forum> forumList=forumService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(forumList);
		m.addAttribute("pdata",st);
		 return new ModelAndView("forumlist");
	}
	@RequestMapping("deleteForum")
	
	public ModelAndView deleteUser(@ModelAttribute("frum")Forum frum,@RequestParam int id,Model m) {
		forumService.deleteRow(id);
		List<Forum> forumList=forumService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(forumList);
		m.addAttribute("pdata", st);
		return new ModelAndView("forumlist");
	
}

	
	
	
	
	/*@RequestMapping("forumpage")
	public String blog (@ModelAttribute("frum")Forum frum,@RequestParam int id,Model m){
	frum=forumService.getRowById(id);
	m.addAttribute("forum", frum);
		return "forumpage";
	}*/
	
	
	@RequestMapping("/forumpage")
	public String blogpage(@ModelAttribute("ans") Reply ans,@RequestParam int id,Model m)
	{
		Forum frum=forumService.getRowById(id);
		m.addAttribute("forum" ,frum);
		List<Reply> cmtLt=answerService.getList();
		List<Reply> cmtNeed=new ArrayList<Reply>();
		for(Reply ccmt:cmtLt)
		{
			if(ccmt.getForumid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		
		m.addAttribute("cmts", cmtNeed);
		return "forumpage";	
	}

	@RequestMapping(value="addreply",method=RequestMethod.POST)
	public String toAddItDb(@ModelAttribute("ans")Reply ans,@RequestParam int id,Model m)
	{
		ans.setCreationDate(new Date());;
		answerService.insertRow(ans);
		
		
		Forum frum=forumService.getRowById(id);
		m.addAttribute("a", frum);
		List<Reply> cmtLt=answerService.getList();
		List<Reply> cmtNeed=new ArrayList<Reply>();
		for(Reply ccmt:cmtLt)
		{
			if(ccmt.getForumid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		
		m.addAttribute("cmts", cmtNeed);
		return "forumpage";
	}
	
}
	
