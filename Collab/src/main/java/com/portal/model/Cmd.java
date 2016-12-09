package com.portal.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cmd {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cmdId;
	private String cmt;
	private int blogid;
	private String userid;
	private String likec;
	private String dislikec;
	private Date creationDate;
	
	public int getCmdId() {
		return cmdId;
	}
	public void setCmdId(int cmdId) {
		this.cmdId = cmdId;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getLikec() {
		return likec;
	}
	public void setLikec(String likec) {
		this.likec = likec;
	}
	public String getDislikec() {
		return dislikec;
	}
	public void setDislikec(String dislikec) {
		this.dislikec = dislikec;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	
}

