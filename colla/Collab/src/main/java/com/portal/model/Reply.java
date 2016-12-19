package com.portal.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Reply {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int replyId;
	private String ans;
	private int forumid;
	private String userid;
	
	private Date creationDate;

	public int getReplyId() {
		return replyId;
	}

	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}

	public int getForumid() {
		return forumid;
	}

	public void setForumid(int forumid) {
		this.forumid = forumid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	
	
	
	
}

