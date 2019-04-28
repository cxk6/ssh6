package com.restaurant.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class BaseDAO {
	//数据库连接
	public Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/restrant","root","123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;		
	}
	// 对象关闭
	public void closeAll(Connection conn,PreparedStatement pstmt,ResultSet rs){
		if (rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
	}
	
	//测试数据库连接
	public static void main(String[] args) {
		if(new BaseDAO().getConnection()!=null){			
			System.out.println("数据库连接成功！");
		}
	}

}
