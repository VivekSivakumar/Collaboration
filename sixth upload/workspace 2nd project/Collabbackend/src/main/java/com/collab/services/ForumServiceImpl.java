package com.collab.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collab.dao.ForumDao;
import com.collab.model.Forum;
import com.collab.services.ForumService;
@Service
public class ForumServiceImpl implements ForumService {
	@Autowired
	private ForumDao forumDao;
	
	
	public ForumDao getForumDao() {
		return forumDao;
	}


	public void setBlogDao(ForumDao forumDao) {
		this.forumDao = forumDao;
	}


	public List<Forum> getAllForums() {
		return forumDao.getAllForums();
	}


	public Forum addForum(Forum forum) {
		return forumDao.addForum(forum);
	}

}
