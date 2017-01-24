package com.collab.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collab.dao.BlogDao;
import com.collab.model.Blog;
import com.collab.services.BlogService;
@Service
public class BlogServiceImpl implements BlogService {
	@Autowired
	private BlogDao blogDao;
	
	
	public BlogDao getBlogDao() {
		return blogDao;
	}


	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}


	public List<Blog> getAllBlogs() {
		return blogDao.getAllBlogs();
	}


	public Blog addBlog(Blog blog) {
		return blogDao.addBlog(blog);
	}

}
