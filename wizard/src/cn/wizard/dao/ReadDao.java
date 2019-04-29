package cn.wizard.dao;

import cn.wizard.pojo.Article;

public interface ReadDao {
	Article readTextDao(String aid, String table);
}
