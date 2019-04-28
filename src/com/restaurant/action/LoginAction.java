package com.restaurant.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String loginName;
	private String loginPwd;
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	
	@Override
	public String execute() throws Exception {
		if ("admin".equals(loginName) && "123".equals(loginPwd)) {
			return SUCCESS;      //SUCCESS 代表的就是“success”字符串
		}else{			
			return "input";			
		}
	}	
	
}
