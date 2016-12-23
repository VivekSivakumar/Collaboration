package com.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.CommentDao;
import com.portal.model.Cmd;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
    
	 @Autowired
	 CommentDao commentDao;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Cmd cat) {
	  return commentDao.insertRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return commentDao.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Cmd getRowById(int id) {
	  return commentDao.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Cmd cat) {
	  return commentDao.updateRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return commentDao.deleteRow(id);																																																																																	
	 }
}