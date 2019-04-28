package com.restaurant.bean;

public class Admin {
	private Integer id;
	private String loginName;
	private String loginPwd;
	//无参构造方法
	public Admin() {
		super();
	}
	
	// 有参构造方法3个参数
	
	public Admin(Integer id, String loginName, String loginPwd) {
		super();
		this.id = id;
		this.loginName = loginName;
		this.loginPwd = loginPwd;
	}	
	
	// 添加相应的getter方法和setter方法
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
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
	
}
