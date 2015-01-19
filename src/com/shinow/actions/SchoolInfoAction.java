package com.shinow.actions;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.SchoolInfoDAO;
import com.shinow.model.SchoolInfo;

public class SchoolInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<SchoolInfo> schoolList;

	@Resource
	private SchoolInfoDAO dao;
	
	public String execute(){
		schoolList=dao.getSchoolList();
		return SUCCESS;
	}
	
	public List<SchoolInfo> getSchoolList() {
		return schoolList;
	}
	
}
