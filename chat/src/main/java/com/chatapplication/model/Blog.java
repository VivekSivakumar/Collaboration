package com.chatapplication.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Blog {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int userid;
	private int uname;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getUname() {
		return uname;
	}
	public void setUname(int uname) {
		this.uname = uname;
	}
	
}
