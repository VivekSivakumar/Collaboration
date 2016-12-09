package com.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.BlogDao;
import com.portal.dao.BlogDaoImpl;
import com.portal.model.Blog;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
    
	 @Autowired
	 BlogDao blogDao;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Blog cat) {
	  return blogDao.insertRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return blogDao.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Blog getRowById(int id) {
	  return blogDao.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Blog cat) {
	  return blogDao.updateRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return blogDao.deleteRow(id);
	 }
}