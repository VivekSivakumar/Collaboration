package com.portal.service;

import java.util.List;

import com.portal.model.Blog;



public interface BlogService {
 public int insertRow(Blog cat);

 public List getList();

 public Blog getRowById(int id);

 public int updateRow(Blog cat );

 public int deleteRow(int id);

}