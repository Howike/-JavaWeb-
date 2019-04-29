 //获取数据
	window.onload = function(){
	 	//创建ajax引擎对象
	 	var ajax;
	 	if(window.XMLHttpRequest){
	 		ajax=new XMLHttpRequest();
	 	}else if(window.ActiveXObject){
	 		ajax=new ActiveXObject("Msxml2.XMLHTTP");
	 	}
	 	//复写onreadystatechange
	 	ajax.onreadystatechange=function(){
	 	//判断ajax状态码
	 		if(ajax.readyState==4){
	 		//判断响应状态码
	 			if(ajax.status==200){
	 				//获取响应数据
	 				var result=ajax.responseText;
//	 				alert(result);
	 				eval("var text="+result);
	 				
	 				//博客主体
	 				var blogs = document.getElementsByClassName("blog-posts")[0];
	 				for(var i=0;i < text.length && i < 5;i++){
	 					blogs.innerHTML += "<div class='blog-post'><div class='blog-post-thumb'><a href=read?aid='"+text[i].aid+"'><img src='home/static/images/blog-posts/post-"+(i+1)+".jpg' alt='' /></a></div><!-- .blog-post-thumb -->"+
	 					"<div class='blog-post-main clearfix'><div class='blog-post-author'><div class='blog-post-author-avatar'><img src='home/static/images/blog-posts/avatar.png' alt='' /></div><!-- .blog-post-author-avatar -->"+
						"<div class='blog-post-author-name'><span>UID: </span><a href='archives.html'>"+text[i].uid+"</a></div><!-- .blog-post-author-name -->"+
						/* "<div class='blog-post-tags'><a href='archives.html'>one</a><a href='archives.html'>two</a><a href='archives.html'>three</a></div><!-- .blog-post-tags -->"+ */
						"</div><!-- .blog-post-author -->"+
						"<div class='blog-post-info'><div class='blog-post-info-inner'><div class='blog-post-title'><h2><a href=read?aid='"+text[i].aid+"'>"+text[i].title+"</a></h2></div><!-- .blog-post-title -->"+
						"<div class='blog-post-meta'>"+text[i].time+"</div><!-- .blog-post-meta -->"+
						"<div class='blog-post-excerpt'>"+text[i].content+"</div><!-- .dslc-blog-post-excerpt -->"+
						"<div class='blog-post-read-more'><a href=read?aid='"+text[i].aid+"'>点击阅读</a></div><!-- .blog-post-read-more -->"+
						"</div><!-- .blog-post-info-inner --></div><!-- .blog-post-info --></div><!-- .blog-post-main --></div><!-- .blog-post -->";
	 				}
	 				
	 				//最新博客mini
	 				 recentPostmini = document.getElementsByClassName("recent-posts-widget")[0];
	 				for(var i=0;i < 3;i++){
	 					recentPostmini.innerHTML += "<div class='recent-posts-widget-post'>" +
	 							"<div class='recent-posts-widget-thumb'>"+
	 									"<a href=read?aid='"+text[i].aid+"'><img src='home/static/images/widget-recent-posts/post-"+(i+1)+".jpg' alt='' /></a></div><!-- .recent-posts-widget-thumb -->"+
	 											"<div class='recent-posts-widget-main'><div class='recent-posts-widget-date'>"+text[i].time+"</div>" +
	 														"<div class='recent-posts-widget-title'><a href=read?aid='"+text[i].aid+"'>"+text[i].title+"</a></div>" +
	 																"<div class='recent-posts-widget-category'><a href='archives.html'>美文</a></div>" +
	 																		"</div><!-- .recent-posts-widget-main -->" +
	 																				"</div><!-- .recent-posts-widget-post -->";
	 				}
	 				//alert(recentPostmin);
	 			}
	 		}
	 	}
	 	//发送请求
	 	ajax.open("get","/wizard/upload?oper=queryAllText");
	 	ajax.send(null);
	}	