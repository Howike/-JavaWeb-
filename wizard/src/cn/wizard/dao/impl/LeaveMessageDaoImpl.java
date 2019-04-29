package cn.wizard.dao.impl;

import java.sql.*;
import java.util.*;

import cn.wizard.pojo.MessBor;

public class LeaveMessageDaoImpl {
	
	Connection conn = DBConn.getConn();
	  // 数据库连接对象
	  PreparedStatement pstmt;
	//留言查询
	 public ArrayList<MessBor> findMbInfo(String atitle) {
	     try {
	       ArrayList<MessBor> al = new ArrayList<MessBor>();
	       pstmt = conn.prepareStatement("select * from messages where atitle="+atitle);
	       ResultSet rs = pstmt.executeQuery();
	       while (rs.next()) {
	         MessBor mb = new MessBor();
	         mb.setId(rs.getInt(1));
	         mb.setUname(rs.getString(2));
	         mb.setTime(rs.getString(3));
	         mb.setAtitle(rs.getString(4));
	         mb.setMessage(rs.getString(5));
	         al.add(mb);
	       }
	       return al;
	     } catch (Exception e) {
	       e.printStackTrace();
	       return null;
	     }
	  }
	 
	//添加留言
	  public boolean addInfo(MessBor mb) {
	     try {
	       pstmt = conn.prepareStatement("insert into messages values(default,?,default,?,?)");
	       pstmt.setString(1, mb.getUname());
	       pstmt.setString(2, mb.getAtitle());
	       pstmt.setString(3, mb.getMessage());
	       pstmt.executeUpdate();
	       return true;
	     } catch (Exception e) {
	       e.printStackTrace();
	       return false;
	     }
	  }
}
