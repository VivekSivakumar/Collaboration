package com.portal.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.bean.RegisterModule;
import com.portal.model.RegisterRole;

@Repository("registerModuleDao")
public class RegisterModuleDaoImpl implements RegisterModuleDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int insertRow(RegisterModule p) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	    p.setEnable("true");
		RegisterRole r=new RegisterRole();
		r.setRoleid(p.getUserid());
		r.setRole_name("ROLE_USER");
		r.setRole_uname(p.getUname());
		session.saveOrUpdate(r);
		

	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }
	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List pList = session.createQuery("from RegisterModule").list();
	  session.close();
	  return pList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public RegisterModule getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  RegisterModule p = (RegisterModule) session.load(RegisterModule.class, id);
	  return p;
	 }
	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(RegisterModule p) 
	{
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(p);
	  tx.commit();
	  Serializable id = session.getIdentifier(p);
	  session.close();
	  return (Integer) id;
	 }
	
	@Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  RegisterModule p = (RegisterModule) session.load(RegisterModule.class, id);
	  session.delete(p);
	  tx.commit();
	  Serializable ids = session.getIdentifier(p);
	  session.close();
	  return (Integer) ids;
	 }

}
