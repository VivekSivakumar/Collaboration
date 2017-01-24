package com.collab.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.collab.dao.BlogDao;
import com.collab.model.Blog;
import com.collab.model.User;
import com.collab.model.UserErr;
import com.collab.services.BlogService;

@RestController
public class BlogController {
	Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private BlogDao blogDao;
	@Autowired
	private BlogService blogService;
	
	public BlogDao getBlogDao() {
		return blogDao;
	}

	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}

	public BlogService getBlogService() {
		return blogService;
	}

	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}
	
	
	
	@RequestMapping(value="/blog",method=RequestMethod.POST)
	public ResponseEntity<?> addblog(@RequestBody Blog blog){
	
		logger.debug("BLOGCONTROLLER=>ADD " + blog);
		blog.setCreationDate(new Date());
		Blog savedBlog=blogDao.addBlog(blog);
		return new ResponseEntity<Blog>(savedBlog,HttpStatus.OK);
			}
	@RequestMapping(value="/allBlog",method=RequestMethod.GET)
	public ResponseEntity< List<Blog>> getAllBlogs(){
		List <Blog> ll=blogService.getAllBlogs();
		System.out.println("--------------userlists before for loop"+ll);
		for(Blog u:ll)
		{
			System.out.println("blogs "+u.getBauthor());
		}
			
		return new ResponseEntity<List<Blog>>(blogService.getAllBlogs(),HttpStatus.OK) ;
	}

}



