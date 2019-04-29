package cn.wizard.service.impl;

import javax.naming.ldap.Rdn;

import cn.wizard.dao.ReadDao;
import cn.wizard.dao.impl.ReadDaoImpl;
import cn.wizard.pojo.Article;
import cn.wizard.service.ReadService;

public class ReadServiceImpl implements ReadService{

	ReadDao rd = new ReadDaoImpl();
	/*
	 * 获取文章
	 * @see cn.wizard.service.ReadService#readTextService()
	 */
	@Override
	public Article readTextService(String aid, String table) {
		// TODO Auto-generated method stub
		return rd.readTextDao(aid, table);
		
	}

}
