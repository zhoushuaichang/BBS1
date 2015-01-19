package com.shinow.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PhotoInfo {

	private int photoId;
	
	private int listId;
	
	private String photoUrl;
	
	private String description;
	
	private Timestamp uploadTime;
	
	private PhotoList plt;

	public int getPhotoId() {
		return photoId;
	}

	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}

	public int getListId() {
		return listId;
	}

	public void setListId(int listId) {
		this.listId = listId;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Timestamp getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

	public PhotoList getPlt() {
		return plt;
	}

	public void setPlt(PhotoList plt) {
		this.plt = plt;
	}
	public String getre_time1() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d=new Date(uploadTime.getTime());
		return sdf.format(d);
	}

	
	
}
