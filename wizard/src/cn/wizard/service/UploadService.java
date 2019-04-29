package cn.wizard.service;

import java.util.ArrayList;

import cn.wizard.pojo.Article;

public interface UploadService {
	/*
	 * 文章上传
	 */
	int uploadArticleService(Article article);
	
	/*
	 * 用户查看自己所有的文章
	 */
	ArrayList<Article> queryAllTextServic(String userid, String table);
}
