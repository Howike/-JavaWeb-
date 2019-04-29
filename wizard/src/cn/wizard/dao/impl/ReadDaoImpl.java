package cn.wizard.dao.impl;

import java.sql.*;

import cn.wizard.dao.ReadDao;
import cn.wizard.pojo.Article;

public class ReadDaoImpl implements ReadDao{

	/*
	 * 获取文章
	 * @see cn.wizard.dao.ReadDao#readText(java.lang.String, java.lang.String)
	 */
	@Override
	public Article readTextDao(String aid, String table) {
		Connection conn = null;
		Statement stat = null;
		Article text = null;
        try {
            //获取连接
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wizarddb?useSSL=false&serverTimezone=UTC","root","po199837");
            //运行SQL语句
            String sql = "select * from " + table + " where article_id=" + aid ;
            System.out.println(sql);
            stat = conn.createStatement();
            text = getTexts(stat, sql);
            if (text == null) {
                System.out.println("查询不到任何信息============");
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	try {
        		if (stat != null) {
        			stat.close();
        		}
        	} catch (Exception e) {
				// TODO: handle exception
        		e.printStackTrace();
			}
            try {//关闭连接
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
            	 e.printStackTrace();
            }
            
        }
        return text;
	}
	
	//处理具体的新闻查询请求，返回所有结果
	public Article getTexts(Statement stat, String sql) {
		Article article = new Article();
	    try {
	    	ResultSet rs = stat.executeQuery(sql);
	        while (rs.next()) {   //实例化VO
	            article.setArticle_id(rs.getInt("article_id"));
	            article.setArticle_title(rs.getString("article_title"));
	            article.setArticle_time(rs.getString("article_time"));
	            article.setArticle_click(rs.getInt("article_click"));
	            article.setUser_id(rs.getInt("user_id"));
	            article.setType_id(rs.getInt("type_id"));
	            article.setArticle_content(rs.getString("article_content"));
	        }
	        rs.close();
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	    System.out.println(article);
		return article;
	}
}
