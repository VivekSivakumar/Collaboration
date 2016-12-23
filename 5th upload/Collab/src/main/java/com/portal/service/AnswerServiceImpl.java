package com.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.AnswerDao;
import com.portal.model.Reply;

@Service("AnswerService")
public class AnswerServiceImpl implements AnswerService {
    
	 @Autowired
	 AnswerDao answerDao;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Reply ans) {
	  return answerDao.insertRow(ans);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return answerDao.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Reply getRowById(int id) {
	  return answerDao.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Reply ans) {
	  return answerDao.updateRow(ans);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return answerDao.deleteRow(id);																																																																																	
	 }
}