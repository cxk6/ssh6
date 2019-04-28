package com.restaurant.service;

import com.restaurant.dao.AdminDAO;

public class AdminService {
	AdminDAO adminDAO=new AdminDAO();
	public boolean login(String loginName,String loginPwd){
		return adminDAO.login(loginName, loginPwd);
	}
}
