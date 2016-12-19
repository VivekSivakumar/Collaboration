package com.portal.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;


@Entity
public class RegisterModule implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userid;
	private	String fname;
	private	String email ;
	private	String dob;
	private String uname;
	private String pwrd;
	@Transient
	private	String repwrd;
	private String mobno;
	
	private String enable;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwrd() {
		return pwrd;
	}
	public void setPwrd(String pwrd) {
		this.pwrd = pwrd;
	}
	public String getRepwrd() {
		return repwrd;
	}
	public void setRepwrd(String repwrd) {
		this.repwrd = repwrd;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	
	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
	}
	
}
