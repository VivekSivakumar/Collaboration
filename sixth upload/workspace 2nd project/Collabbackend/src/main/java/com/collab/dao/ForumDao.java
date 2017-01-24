package com.collab.dao;

import java.util.List;

import com.collab.model.Forum;

public interface ForumDao {
	List<Forum> getAllForums();
	Forum addForum(Forum forum);
}
