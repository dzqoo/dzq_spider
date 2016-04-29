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
 * ����ͼƬ
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
			
			//��ȡͼƬ�ı�ǩ
			Elements imgs = doc.getElementsByTag("img");
			Image image =null;
			for(Element img:imgs){
				image = new Image();
				String surl  = img.attr(" ");//Сͼurl
				String title = img.attr(" ");//��ǩurl
				String bigUrl  = img.attr(" ");//��ͼurl
				//�ж���Щurl��Ϊ��
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
			// ��¼������־
			e.printStackTrace();
		}

		return images;
	}
}
