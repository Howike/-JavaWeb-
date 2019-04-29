package cn.wizard.servlet;

import java.io.IOException;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wizard.pojo.User;
import cn.wizard.service.UserService;
import cn.wizard.service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 //获取service层对象
    UserService us=new UserServiceImpl();
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置请求编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应编码格式
		response.setContentType("text/html;charset=utf-8");
		//获取操作符
		String oper=request.getParameter("oper");
		if ("login".equals(oper)) {
			//调用登录处理方法
			checkUserLogin(request, response);
		} else if("exit".equals(oper)){
			//调用退出功能 
			userExit(request, response);
		}else if ("pwd".equals(oper)) {
			//调用密码修改功能
		}else if ("show".equals(oper)) {
			//调用显示所有用户功能
		}else if ("reg".equals(oper)) {
			//调用注册功能
			userReg(request, response);
		}
	}
	
	//处理登录
	private void checkUserLogin(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		//获取请求信息
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
		//处理请求信息
		//校验
		User u=us.checkUserLoginService(uname, pwd);
		if(u!=null) {
			//获取session对象
			HttpSession hs=request.getSession();
			//将用户数据存储到session中
			hs.setAttribute("user", u);
			//重定向
			response.sendRedirect("/wizard/index.jsp");
			return;
		}else {
			//添加标识符到request中
			request.setAttribute("flag", 0);
			//请求转发
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
	}
	
	//注册用户
		private void userReg(HttpServletRequest request, HttpServletResponse response) throws IOException {
			//获取请求信息
				String uname=request.getParameter("Username");
				String pwd=request.getParameter("password");
				String email=request.getParameter("email");
				String sign ="编辑个性签名";
				String sex=null;
				int age=0;
				String birth=null;
				System.out.println(uname+":"+pwd+":"+sex+":"+age+":"+birth);
				User u=new User(0, uname, pwd, email, sign, sex, age, birth);
			//处理请求信息
				//调用业务层处理
				int index=us.userRegService(u);
			//响应处理结果
				if(index>0){
					//获取session
					HttpSession hs=request.getSession();
					hs.setAttribute("reg", "true");
					//重定向
					response.sendRedirect("/wizard/login.jsp");
				}
			
		}
		
		//用户退出
		private void userExit(HttpServletRequest request,HttpServletResponse response) throws IOException {
			//获取session对象
			HttpSession hs=request.getSession();
			//销毁session
			hs.invalidate();
			//重定向
			response.sendRedirect("/wizard/login.jsp");
		}
}
