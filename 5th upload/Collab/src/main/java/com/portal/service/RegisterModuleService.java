package com.portal.service;

import java.util.List;

import com.portal.bean.RegisterModule;

public interface RegisterModuleService {

	public int insertRow(RegisterModule p); 
	
	public List getList();
	
	public RegisterModule getRowById(int id);
	
	public int updateRow(RegisterModule p);
	
	public int deleteRow(int id);

}
