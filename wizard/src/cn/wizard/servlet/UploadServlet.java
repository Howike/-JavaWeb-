package cn.wizard.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import cn.wizard.pojo.Article;
import cn.wizard.pojo.User;
import cn.wizard.service.UploadService;
import cn.wizard.service.impl.UploadServiceImpl;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
	
	 //获取service层对象
	UploadService us = new UploadServiceImpl();
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应编码格式
		response.setContentType("text/html;charset=utf-8");
		//获取操作符
		String oper = request.getParameter("oper");
		if ("text".equals(oper)) {
			uploadArticle(request, response);
		} else if ("queryAllText".equals(oper)) {
			queryAllText(request,response);
		}
	}
	
	//上传文章
	private void uploadArticle (HttpServletRequest request, HttpServletResponse response) throws IOException  {
		//获取请求信息
		String title = request.getParameter("title");
		String text = request.getParameter("text-content");
		
		HttpSession hs=request.getSession();
		User user = (User)hs.getAttribute("user");
		
		Article article = new Article(0, title, "-:-:-", 0, user.getUid(), 1, text);
		int index = us.uploadArticleService(article);
		if (index>0) {
			response.sendRedirect("account/upload.jsp");
		}
		//响应处理结果
			
	}
	
	//用户查看自己所有的文章
	private void queryAllText(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//设置请求编码格式
		request.setCharacterEncoding("utf-8");
		//设置响应编码格式
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		ArrayList<Article> textList = new ArrayList<>();	
		HttpSession hs=request.getSession();
		User user = (User)hs.getAttribute("user");
		textList = us.queryAllTextServic(String.valueOf(user.getUid()), "article");
		//响应处理结果
		response.getWriter().write(new Gson().toJson(textList));
	}
}
