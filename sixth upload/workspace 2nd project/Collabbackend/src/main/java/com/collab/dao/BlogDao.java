package com.collab.dao;

import java.util.List;

import com.collab.model.Blog;

public interface BlogDao {
	List<Blog> getAllBlogs();
	Blog addBlog(Blog blog);
}
