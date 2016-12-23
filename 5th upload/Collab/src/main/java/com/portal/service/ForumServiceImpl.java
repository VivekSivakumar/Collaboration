package com.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.ForumDao;
import com.portal.model.Forum;



@Service("forumService")
public class ForumServiceImpl implements ForumService {
    
	 @Autowired
	 ForumDao forumDao;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Forum frm) {
	  return forumDao.insertRow(frm);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return forumDao.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Forum getRowById(int id) {
	  return forumDao.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Forum frm) {
	  return forumDao.updateRow(frm);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return forumDao.deleteRow(id);
	 }
}
