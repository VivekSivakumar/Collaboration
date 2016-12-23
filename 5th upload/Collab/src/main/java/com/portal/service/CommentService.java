package com.portal.service;

import java.util.List;

import com.portal.model.Cmd;



public interface CommentService {
 public int insertRow(Cmd cmd);

 public List getList();

 public Cmd getRowById(int id);

 public int updateRow(Cmd cmd );

 public int deleteRow(int id);

}