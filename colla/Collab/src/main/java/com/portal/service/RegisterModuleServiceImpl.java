package com.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.bean.RegisterModule;
import com.portal.dao.RegisterModuleDao;

@Service("registerModuleService")
public class RegisterModuleServiceImpl implements RegisterModuleService {
	
	@Autowired
	 RegisterModuleDao registerModuleDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(RegisterModule use) {
	  return registerModuleDao.insertRow(use);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return registerModuleDao.getList();
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public RegisterModule getRowById(int id) {
	  return registerModuleDao.getRowById(id);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(RegisterModule use) {
	  return registerModuleDao.updateRow(use);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return registerModuleDao.deleteRow(id);
	 }
	
}
