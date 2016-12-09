package com.portal.dao;

import java.util.List;

import com.portal.bean.RegisterModule;

public interface RegisterModuleDao {

	public int insertRow(RegisterModule use);

	 public List getList();

	 public RegisterModule getRowById(int id);

	 public int updateRow(RegisterModule use);

	 public int deleteRow(int id);

}