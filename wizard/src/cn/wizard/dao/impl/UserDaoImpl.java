package cn.wizard.dao.impl;

import java.sql.*;


import cn.wizard.dao.UserDao;
import cn.wizard.pojo.User;

public class UserDaoImpl implements UserDao{

	//根据用户名和密码查询用户信息
	@Override
	public User checkUserLoginDao(String uname, String pwd) {
		//声明jdbc
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		//声明变量
		User user=null;
		try {
			//加载驱动
			Class.forName("com.mysql.cj.jdbc.Driver");
			//获取链接
			conn=DriverManager.getConnection("jdbc:mysql://47.100.114.251:3306/wizarddb?useSSL=false&serverTimezone=UTC","root","po199837");
			if(!conn.isClosed())
				System.out.print("successed connecting to database");
			//创建sql命令
			String sql="Select * from user where uname=? and pwd=?";
			//创建sql命令对象
			ps=conn.prepareStatement(sql);
			//给占位符赋值
			ps.setString(1, uname);
			ps.setString(2, pwd);
			//执行sql
			rs=ps.executeQuery();
			//遍历结果
			while(rs.next()) {
				user=new User();
				user.setUid(rs.getInt("uid"));
				user.setUname(rs.getString("uname"));
				user.setPwd(rs.getString("pwd"));
				user.setEmail(rs.getString("email"));
				user.setSign(rs.getString("sign"));
				user.setSex(rs.getString("sex"));
				user.setAge(rs.getInt("age"));
				user.setBirth(rs.getString("birth"));
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//关闭资源
			try {			
				rs.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//返回结果
		return user;
	}

	//用户注册
	@Override
	public int userRegDao(User u) {
		//声明jdbc对象
				Connection conn=null;
				PreparedStatement ps=null;
				//声明变量
				int index=-1;
				try {
					//加载驱动
					Class.forName("com.mysql.cj.jdbc.Driver");
					//获取连接
					conn=DriverManager.getConnection("jdbc:mysql://47.100.114.251:3306/wizarddb?useSSL=false&serverTimezone=UTC","root","po199837");
					//创建SQL命令
					String sql="insert into user values(default ,? ,? ,? ,default ,? ,? ,? )";
					//创建SQL命令对象
					ps=conn.prepareStatement(sql);
					//给占位符赋值
					ps.setString(1,u.getUname());
					ps.setString(2, u.getPwd());
					ps.setString(3, u.getEmail());
					ps.setString(4, u.getSex());
					ps.setInt(5, u.getAge());
					ps.setString(6, u.getBirth());
					//执行
					index=ps.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}finally{//关闭资源
					try {
						ps.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					try {
						conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				//返回结果
				return index;
	}

}
