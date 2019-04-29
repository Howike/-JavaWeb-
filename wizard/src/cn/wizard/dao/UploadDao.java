package cn.wizard.dao;

import java.sql.*;
import java.util.ArrayList;

import cn.wizard.pojo.Article;

public interface UploadDao {
	/*
	 * 文章上传
	 */
	int uploadArticle(Article article);
	
	/*
	 * 用户查看自己所有的文章
	 */
	ArrayList<Article> queryAllTextDao(String username, String table);

}
