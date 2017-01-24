package com.collab.services;

import java.util.List;

import com.collab.model.Forum;

public interface ForumService {
	List<Forum> getAllForums();
	Forum addForum(Forum forum);

}
