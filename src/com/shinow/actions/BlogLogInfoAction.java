package com.shinow.actions;

import java.util.Map;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.BlogLogInfoDAO;
import com.shinow.model.BlogLogInfo;
import com.shinow.model.UserInfo;

public class BlogLogInfoAction extends ActionSupport{
    @Resource
    private BlogLogInfoDAO dao;
//    @Resource
    private BlogLogInfo blog;

	public BlogLogInfoDAO getDao() {
		return dao;
	}
	
	public String select(){
		dao.queryByuserID(12);
		return "success";
	} 
    
	public BlogLogInfo getBlog() {
		return blog;
	}

	public void setBlog(BlogLogInfo blog) {
		this.blog = blog;
	}

	public void setDao(BlogLogInfoDAO dao) {
		this.dao = dao;
	}

	public String insert(){
		
		Map<String,Object> session=(Map<String,Object>)ActionContext.getContext().getSession();
		UserInfo user=(UserInfo)session.get("current_userinfo");
		blog.setUserID(17);
		boolean result=dao.insert(blog);
		if(result){
			return SUCCESS;
		}else{
			return INPUT;
		}
		
	}
}
