<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
<head>

<title>Java 网络爬虫系统</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="./js/blocksit.min.js"></script>
<script type="text/javascript" src="./js/jquery.lightbox-0.5.min.js"></script>
<script type="text/javascript">
	$(function() {
		//要显示的列数
		var col = 4;
		//页码
		var pageNum;
		/*
		 *流式布局
		 */
		function blockImages() {
			$("#container").BlocksIt({
				numofCol : col,
				offsetX : 8,
				offsetY : 8
			});
		}
		//添加点击事件
		$("#gotop").click(function() {
			$("body,html").animate({
				scrollTop : 0
			}, 1000);
		});
		//给按钮绑定点击事件
		$("#searchBtn").click(function() {
			//记载图片
		});
		//图片懒加载
		$("img.lazy").lazyload({
			load : blockImages()
		});
		//绑定窗口滚动的事件
		$(window).scroll(
				function() {
					//判断滚动条是否到了屏幕底部
					if ($(document).height() - $(this).scrollTop()
							- $(this).height() < 50) {
						//加载下一页图片
					}
					if ($(this).scrollTop() > 200) {
						$("#gotop").fadeIn(400);//淡入
					} else {
						$("#gotop").stop().fadeOut(400);//淡出
					}
				});

		/*
		 *加载图片 去后天获取图片地址
		 */
		function loadImages() {
			//获取选中的类型值
			var category = $("#category").val();
			$.ajax({
				url : "",
				async : true,
				type : "POST",
				data : {
					"category" : category,
					"pageNum" : pageNum
				},
				dataType : "json",
				success : function(data) {
					//解析后台返回的结果
					pageNum++;
					blockImages();
					$("img.lazy").lazyload({
						load : blockImages
					});
				}
			});
		}
	});
</script>
</head>

<body>
	<div class="search">
		<h1>Java 开发网络爬虫系统</h1>
		<div class="s_box">
			<select class="box_select" id="category">
				<option value="all">全部</option>
				<option value="all1">全部1</option>
				<option value="all2">全部2</option>
				<option value="all3">全部3</option>
				<option value="all4">全部4</option>
				<option value="all5">全部5</option>
				<option value="all6">全部6</option>
			</select> <input type="button" value="确定" class="searchBtn" />
		</div>
	</div>
	<div id="wrapper">
		<div id="container">
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>

			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>

			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>
			<div class="grid">
				<div class="imageholder">
					<img class="lazy" src="./images/test.png" data-original=""
						width="200" style="display:block;">
				</div>
				<strong>照片描述文字</strong>
				<div class="meta">
					<a href="" class="">高清原图</a>
				</div>
			</div>


		</div>
	</div>
	<div id="gotop"></div>
</body>
</html>

