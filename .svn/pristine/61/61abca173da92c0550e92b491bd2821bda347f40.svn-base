               package com.shinow.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BlogLogInfo {
	private int blogId;
	private int blogClassId;
	private int userID;
	private int lableId;
	private String blogMsg;
	private Timestamp blogTime;
	private String blogTitle;
	private String blogLable;
	private UserInfo user;
	private BlogClassInfo type;
	private Lable lable;
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public int getBlogClassId() {
		return blogClassId;
	}
	public void setBlogClassId(int blogClassId) {
		this.blogClassId = blogClassId;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getLableId() {
		return lableId;
	}
	public void setLableId(int lableId) {
		this.lableId = lableId;
	}
	public String getBlogMsg() {
		return blogMsg;
	}
	public void setBlogMsg(String blogMsg) {
		this.blogMsg = blogMsg;
	}
	public Timestamp getBlogTime() {
		return blogTime;
	}
	public void setBlogTime(Timestamp blogTime) {
		this.blogTime = blogTime;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogLable() {
		return blogLable;
	}
	public void setBlogLable(String blogLable) {
		this.blogLable = blogLable;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public BlogClassInfo getType() {
		return type;
	}
	public void setType(BlogClassInfo type) {
		this.type = type;
	}
	public Lable getLable() {
		return lable;
	}
	public void setLable(Lable lable) {
		this.lable = lable;
	}
	public String getre_time1() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d=new Date(blogTime.getTime());
		return sdf.format(d);
	}
	
}
