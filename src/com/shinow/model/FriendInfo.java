package com.shinow.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FriendInfo {

	private int friendId;
	
	private int userId;
	
	private Timestamp lastTime;

	public int getFriendId() {
		return friendId;
	}

	public void setFriendId(int friendId) {
		this.friendId = friendId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Timestamp getLastTime() {
		return lastTime;
	}

	public void setLastTime(Timestamp lastTime) {
		this.lastTime = lastTime;
	}
	public String getre_time1() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d=new Date(lastTime.getTime());
		return sdf.format(d);
	}

	
	
}
