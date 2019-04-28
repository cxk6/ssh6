package com.restaurant.bean;

public class AdminControl {
	// 得到管理员账号的最大Id号
	
	public int getMaxId(){
		int num=0;
		String sql="select max(id) from admin";
		//省略访问数据库的实现
		
		//return num;
		return 1000;
	}
	
	//插入记录
	public void insert(Admin admin){
		
		
	}
}
