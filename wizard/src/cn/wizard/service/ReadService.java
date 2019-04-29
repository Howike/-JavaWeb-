package cn.wizard.service;

import cn.wizard.pojo.Article;

public interface ReadService {
	/*
	 * 获取文章
	 */
	public Article readTextService(String aid, String table);
}
