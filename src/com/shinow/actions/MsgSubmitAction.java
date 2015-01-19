package com.shinow.actions;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.shinow.model.MsgInfo;

public class MsgSubmitAction extends ActionSupport{

	@Resource
	private MsgInfo msg;
	
	public String execute(){
		
		
		
		return SUCCESS;
	}
	
}
