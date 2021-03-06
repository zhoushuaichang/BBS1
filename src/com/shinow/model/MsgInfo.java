package com.shinow.model;

import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class MsgInfo {

	private int msgId;
	
	private int friendId;
	
	private String msgContent;
	
	private Timestamp msgTime;
	
	private UserInfo user;

	public int getMsgId() {
		return msgId;
	}

	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}

	public int getFriendId() {
		return friendId;
	}

	public void setFriendId(int friendId) {
		this.friendId = friendId;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Timestamp getMsgTime() {
		return msgTime;
	}

	public void setMsgTime(Timestamp msgTime) {
		this.msgTime = msgTime;
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}
	public String getretime1() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d=new Date(msgTime.getTime());
		return sdf.format(d);
	}




}
