package com.neu.spider.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.neu.spider.bean.Image;
import com.neu.spider.util.SpiderUtil;

/**
 * Servlet implementation class LoadImageServlet
 */
@WebServlet("/LoadImageServlet")
public class LoadImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//页面和类型
			String pageNum = request.getParameter("pageNum");
			String category =request.getParameter("category");     
			
			List<Image> images = SpiderUtil.queryImageList(category, pageNum);
			
			response.setContentType("text/html;charset=utf-8");
			
			PrintWriter out =response.getWriter();
			
			out.print(JSONArray.toJSONString(images,true));
			out.flush();
			out.close();
	}

}
