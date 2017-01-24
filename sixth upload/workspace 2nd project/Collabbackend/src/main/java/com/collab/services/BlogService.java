package com.collab.services;

import java.util.List;

import com.collab.model.Blog;

public interface BlogService {
	List<Blog> getAllBlogs();
	Blog addBlog(Blog blog);

}
