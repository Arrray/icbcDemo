package com.it.bean;

public class Account {
	int aid;
	String aname;
	String apsd;
	int rid;

	public Account() {
		super();
	}

	public Account(int aid, String aname, String apsd, int rid) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apsd = apsd;
		this.rid = rid;
	}

	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApsd() {
		return apsd;
	}
	public void setApsd(String apsd) {
		this.apsd = apsd;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}

}
