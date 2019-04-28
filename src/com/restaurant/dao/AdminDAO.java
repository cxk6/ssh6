package com.restaurant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO extends BaseDAO {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	//登录方法
	public boolean login(String loginName,String loginPwd){
		boolean isLogin=false;
		String sql="select * from admin where loginName=? and loginPwd=?";
		try {
			conn=this.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginName);
			pstmt.setString(2, loginPwd);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				isLogin=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return isLogin;		
	}
	
	
}
