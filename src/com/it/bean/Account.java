package com.it.bean;

public class Account {
  int aid;
  String uname;
  String pwd;
  int rid;
  
public Account() {
	super();
}

public Account(int aid, String uname, String pwd, int rid) {
	super();
	this.aid = aid;
	this.uname = uname;
	this.pwd = pwd;
	this.rid = rid;
}

public int getAid() {
	return aid;
}
public void setAid(int aid) {
	this.aid = aid;
}
public String getUname() {
	return uname;
}
public void setUname(String aname) {
	this.uname = uname;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
  
}
