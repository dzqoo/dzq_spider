package com.neu.spider.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.neu.spider.bean.Image;

/*
 * 记载图片
 */
public class SpiderUtil {

	private static Map<String, String> urls = new HashMap<String, String>();
	static {
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
		urls.put("all", " ");
	}

	public static List<Image> queryImageList(String category, String pageNum) {
		List<Image> images = new ArrayList<Image>();
		try {
			Document doc = Jsoup.connect(urls.get(category)).data("p", pageNum)
					.timeout(3000).get();
			
			//获取图片的标签
			Elements imgs = doc.getElementsByTag("img");
			Image image =null;
			for(Element img:imgs){
				image = new Image();
				String surl  = img.attr(" ");//小图url
				String title = img.attr(" ");//标签url
				String bigUrl  = img.attr(" ");//大图url
				//判断这些url不为空
				if(surl != null &&!"".equals(surl)
						&& title != null &&!"".equals(title)
						&& bigUrl != null &&!"".equals(bigUrl)){
							image.setsUrl(surl);
							image.setTitle(title);
							image.setBigUrl(bigUrl);
							
							
							images.add(image);
						}
				
			}
		} catch (IOException e) {
			// 记录错误日志
			e.printStackTrace();
		}

		return images;
	}
}
