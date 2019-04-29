package cn.wizard.service.impl;

import cn.wizard.dao.UserDao;
import cn.wizard.dao.impl.UserDaoImpl;
import cn.wizard.pojo.User;
import cn.wizard.service.UserService;

public class UserServiceImpl implements UserService{

	UserDao uDao=new UserDaoImpl();
	
	//用户登录
	@Override
	public User checkUserLoginService(String uname, String pwd) {
		// TODO Auto-generated method stub
		User user=uDao.checkUserLoginDao(uname, pwd);
		//判断
		if(user!=null) {
			System.out.print(uname+"登陆成功");
		}else {
			System.out.print(uname+"登陆失败");
		}
		return user;
	}
	
	//用户注册
	@Override
	public int userRegService(User u) {
		return uDao.userRegDao(u);
	}

}
