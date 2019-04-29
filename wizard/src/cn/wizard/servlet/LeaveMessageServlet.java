package cn.wizard.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.google.gson.Gson;

import cn.wizard.dao.impl.LeaveMessageDaoImpl;
import cn.wizard.pojo.MessBor;
import cn.wizard.pojo.User;

/**
 * Servlet implementation class LeaveMessageServlet
 */
@WebServlet("/lm")
public class LeaveMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置请求编码        
	     request.setCharacterEncoding("utf-8");         
	     // 设置响应编码        
	     response.setContentType("text/html;charset=utf-8");
	     
	     String oper = request.getParameter("oper");
	     System.out.println(oper);
	     if ("form".equals(oper)) {
			addLeaveMsg(request, response);
		}else if ("msglist".equals(oper)) {
			findMsg(request, response);
		}
	     
	}
	
	public void addLeaveMsg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 获取title内容         
	     String title=request.getParameter("aid");        
	     // 获取message内容         
	     String message=request.getParameter("comment");         
	     // 从session中取出当前用户对象         
	    User leaveMessageUser=(User) request.getSession().getAttribute("user");        
	     // 建立留言表对应JavaBean对象，把数据封装进去        
	     MessBor mb=new MessBor();      
	     // 参数为获取的当前时间         
	     mb.setUname(leaveMessageUser.getUname());       
	     mb.setAtitle(title);         
	     mb.setMessage(message);       
	     // 调DB类中的方法判断是否插入成功         
	     if(new LeaveMessageDaoImpl().addInfo(mb)){           
	       System.out.println("读取成功");        
	       }
	}
	
	public void findMsg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 获取title内容         
	     String aid=request.getParameter("aid");
	     ArrayList<MessBor> al = new LeaveMessageDaoImpl().findMbInfo(aid);
	     response.getWriter().write(new Gson().toJson(al));	
	}

}
