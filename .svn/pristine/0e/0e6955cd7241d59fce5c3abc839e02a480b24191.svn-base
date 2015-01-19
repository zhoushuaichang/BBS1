package com.shinow.actions;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.PostpageDAO;
import com.shinow.model.BlogLogInfo;

public class PostpageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Resource
	private PostpageDAO pp;
	@Resource 
	private BlogLogInfo blog;
	
	public String postpage(){
	List<BlogLogInfo> blog_list=pp.querypage(3, 1);
		
		return "ok";
	}
	
}
