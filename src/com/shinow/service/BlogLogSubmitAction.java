package com.shinow.service;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.BlogClassInfoDAO;
import com.shinow.dao.LableDAO;
import com.shinow.model.BlogClassInfo;
import com.shinow.model.Lable;

public class BlogLogSubmitAction extends ActionSupport {


	private static final long serialVersionUID = 1L;

	private List<BlogClassInfo> classList;
	private List<Lable> lableList;

	

	@Resource
	private BlogClassInfoDAO classDao;
	@Resource
	private LableDAO lable;
//	private BlogClassInfoDAO classDao;
	
	public String execute(){
		classList=classDao.getBlogClassList();
		lableList=lable.getLableList();
		return SUCCESS;
	}

	public List<BlogClassInfo> getClassList() {
		return classList;
	}
	public List<Lable> getLableList() {
		return lableList;
	}
}
