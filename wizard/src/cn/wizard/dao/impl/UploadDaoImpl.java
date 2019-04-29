package cn.wizard.dao.impl;

import java.sql.*;
import java.util.ArrayList;

import cn.wizard.dao.UploadDao;
import cn.wizard.pojo.Article;

public class UploadDaoImpl implements UploadDao {

	Article article=null;
	
	//上传文章
	@Override
	public int uploadArticle(Article article) {
		//声明jdbc对象
		Connection conn = null;
		PreparedStatement ps = null;
		//声明变量
		int index=-1;
		try {
			//加载驱动
			Class.forName("com.mysql.cj.jdbc.Driver");
			//获取连接
			conn = DriverManager.getConnection("jdbc:mysql://47.100.114.251:3306/wizarddb?useSSL=false&serverTimezone=UTC","root","po199837");
			//创建SQL命令
			String sql = "insert into Article values(default,?,default,?,?,?,?)";
			//创建SQL命令对象
			ps = conn.prepareStatement(sql);
			//给占位符赋值
			ps.setString(1,article.getArticle_title());
			ps.setInt(2, article.getArticle_click());
			ps.setInt(3, article.getUser_id());
			ps.setInt(4, article.getType_id());
			ps.setString(5, article.getArticle_content());
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
				e.printStackTrace();
			}
		}
		//返回结果
		return index;
	}
	
	//处理具体的新闻查询请求，返回所有结果
	public ArrayList<Article> getTexts(Statement stat, String sql) {
        ArrayList<Article> textList = new ArrayList<Article>();
        try {
            ResultSet rs = stat.executeQuery(sql);
            while (rs.next()) {   //实例化VO
                Article article = new Article();
                article.setArticle_id(rs.getInt("article_id"));
                article.setArticle_title(rs.getString("article_title"));
                article.setArticle_time(rs.getString("article_time"));
                article.setArticle_click(rs.getInt("article_click"));
                article.setUser_id(rs.getInt("user_id"));
                article.setType_id(rs.getInt("type_id"));
                article.setArticle_content(rs.getString("article_content"));
                textList.add(article);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return textList;
    }

	//用户查看自己所有的文章
	@Override
	public ArrayList<Article> queryAllTextDao(String userid, String table) {
		Connection conn = null;
		Statement stat = null;
        ArrayList<Article> textList = new ArrayList();
        try {
            //获取连接
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://47.100.114.251:3306/wizarddb?useSSL=false&serverTimezone=UTC","root","po199837");
            //运行SQL语句
            String sql = "select * from " + table + " where user_id='" + userid + "' order by article_time desc";
            stat = conn.createStatement();
            textList = getTexts(stat, sql);
            if (textList.size() == 0) {
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
        return textList;
	}
}
