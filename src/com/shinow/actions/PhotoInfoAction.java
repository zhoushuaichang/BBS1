package com.shinow.actions;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.PhotoInfoDAO;
import com.shinow.model.PhotoInfo;


public class PhotoInfoAction extends ActionSupport {
	@Resource
    private  List<PhotoInfo> dao;
	@Resource
	private PhotoInfoDAO pid;
//	private PhotoInfo photo;
	private static final long serialVersionUID = 1L;
	public String execute(){
		   dao=pid.qureyall();
		return SUCCESS;
	}
	public List<PhotoInfo> getDao() {
		return dao;
	}
	public void setDao(List<PhotoInfo> dao) {
		this.dao = dao;
	}
	public PhotoInfoDAO getPid() {
		return pid;
	}
	public void setPid(PhotoInfoDAO pid) {
		this.pid = pid;
	}


	
	
}
