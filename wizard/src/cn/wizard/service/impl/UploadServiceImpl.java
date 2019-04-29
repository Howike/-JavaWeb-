package cn.wizard.service.impl;

import java.util.ArrayList;

import cn.wizard.dao.UploadDao;
import cn.wizard.dao.impl.UploadDaoImpl;
import cn.wizard.pojo.Article;
import cn.wizard.service.UploadService;

public class UploadServiceImpl implements UploadService {

	UploadDao uploadDao = new UploadDaoImpl(); 
	
	//上传文章
	@Override
	public int uploadArticleService(Article article) {
		// TODO Auto-generated method stub
		return uploadDao.uploadArticle(article);
	}

	//用户查看自己所有的文章
	@Override
	public ArrayList<Article> queryAllTextServic(String userid, String table) {
		// TODO Auto-generated method stub
		return uploadDao.queryAllTextDao(userid, table);
	}

}
