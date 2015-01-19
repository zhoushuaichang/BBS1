package com.shinow.actions;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shinow.dao.UserInfoDAO;
import com.shinow.model.UserInfo;
@Service
public class RegLoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Resource
	private UserInfoDAO dao;
	private String userpass1;
	private UserInfo user;
	public String checklogin(){
		if((user.getUserName()==null)||(user.getUserName().trim().length()<1)){
			this.addFieldError("errorField", "用户名不能为空");
			return INPUT;
		}
		if((user.getUserPass()==null)||(user.getUserPass().trim().length()<1)){
			this.addFieldError("errorField", "密码不能为空!");
			return INPUT;
		}
				
		 UserInfo jk=dao.querylogin1(user.getUserName(),user.getUserPass());
		if(jk.getUserID()==0){
			this.addFieldError("errorfield", "登录名或密码错误!");
			return INPUT;
		}	
		if(this.hasErrors()==true){
			return INPUT;
			}
		else{

				Map<String,Object> session=(Map<String,Object>)ActionContext.getContext().getSession();
				//		Map<String,Object> request=(Map<String,Object>)ActionContext.getContext().get("reuqest");
						session.put("current_userinfo",user);
						return "login1";	
			}

		}   
	
		public String regblog(){
			user.setUserName(user.getUserName());
			UserInfo aa=dao.querylogin(user);
			if((user.getUserName()==null)||(user.getUserName().trim().length()==0)){
				this.addFieldError("user.userName", "用户不能为空！请重新输入！");
			}
			if(aa!=null){
				this.addFieldError("user.userName","用户名已存在!请重新输入！");
				return INPUT;
			}    
			if((user.getUserPass()==null)||(user.getUserPass().trim().length()<1)){
				this.addFieldError("user.userPass", "密码不能为空!");
				return INPUT;
			}
			if((userpass1==null)||(userpass1.trim().length()<1)){
				this.addFieldError("userpass1", "请再次输入密码!");
				return INPUT;
			}
			if(!user.getUserPass().equals(userpass1)){
				this.addFieldError("userpass1","两次密码不一致！");
				return INPUT;
			}
			
			if(this.hasErrors()==true){
				return INPUT;
				}
			
			else{
				
				if(true==dao.userinset(user)){
					return SUCCESS;		
				}else{
					return INPUT;
				}
				
			}
			
			
		}
	public UserInfoDAO getDao() {
		return dao;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public String getUserpass1() {
		return userpass1;
	}

	public void setUserpass1(String userpass1) {
		this.userpass1 = userpass1;
	}
}
