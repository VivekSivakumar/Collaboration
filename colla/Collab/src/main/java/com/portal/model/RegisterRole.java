package com.portal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RegisterRole {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
   private int roleid;
   private String role_name;
   private String role_uname;

   public int getRoleid() {
	return roleid;
   }

   public void setRoleid(int roleid) {
	this.roleid = roleid;
   }

   public String getRole_name() {
	return role_name;
   }

   public void setRole_name(String role_name) {
	this.role_name = role_name;
   }

   public String getRole_uname() {
	return role_uname;
   }

   public void setRole_uname(String role_uname) {
	this.role_uname = role_uname;
   }

}