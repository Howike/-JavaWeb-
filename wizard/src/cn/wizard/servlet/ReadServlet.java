package cn.wizard.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import cn.wizard.pojo.Article;
import cn.wizard.service.ReadService;
import cn.wizard.service.impl.ReadServiceImpl;

/**
 * Servlet implementation class ReadServlet
 */
@WebServlet("/read")
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	ReadService reads = new ReadServiceImpl();
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置请求编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应编码格式
		response.setContentType("text/html;charset=utf-8");
		
		
		String action = request.getParameter("action");
		if ("ajax".equals(action)) {
			readText(request, response);
		}else if (!"ajax".equals(action)) {
			String aid = request.getParameter("aid");
			System.out.println(aid);
			//响应处理结果
			//获取session对象
			HttpSession hs=request.getSession();
			//将用户数据存储到session中
			hs.setAttribute("aid", aid);
			request.getRequestDispatcher("/single.jsp").forward(request, response);
		}
		return;
		
	}
	
	private void readText(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String aid = (String)request.getAttribute("aid");
		Article article = reads.readTextService(aid, "article");
		System.out.println(article);
		response.getWriter().write(new Gson().toJson(article));	
	}
	
	

}
