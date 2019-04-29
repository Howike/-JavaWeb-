<%@page import="cn.wizard.service.impl.ReadServiceImpl"%>
<%@page import="cn.wizard.service.ReadService"%>
<%@page import="cn.wizard.pojo.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%
		ReadService reads = new ReadServiceImpl();
		String aid = request.getParameter("aid");
		Article text = reads.readTextService(aid, "article");
	%>
	
	<title><%= text.getArticle_title() %> - wizard</title>

	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta charset="utf-8">
	<meta name="author" content="">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="home/static/images/favicon.png">
	<link rel="apple-touch-icon" href="home/static/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="home/static/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="home/static/images/apple-touch-icon-114x114.png">

	<!-- CSS -->
	<link rel="stylesheet" href="home/static/css/fonts/font-awesome.css">
	<link rel="stylesheet" href="home/static/css/plugins.css">
	<link rel="stylesheet" href="home/static/css/main.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900%7CMontserrat:400,700%7CLora:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
	
</head>
<body>
	<!-- Header -->
	<%@include file="header.jsp"%>
	<!-- Header end -->
	<div id="main">

		<div class="wrapper clearfix">

			<div id="content">
					
				<div class="blog-post blog-post-single">

					<div class="blog-post-thumb">
						<img src="home/static/images/blog-posts/placeholder.jpg" alt="" />
					</div><!-- .blog-post-thumb -->

					<div class="blog-post-main clearfix">
					
						<div class="blog-post-info">

							<div class="blog-post-info-inner">
						
								<div class="blog-post-title">
									<h1><%= text.getArticle_title() %></h1>
								</div><!-- .blog-post-title -->

								<div class="blog-post-meta">
									<%= text.getArticle_time() %>, UId: <a href="#"><%= text.getUser_id() %></a>
								</div><!-- .blog-post-meta -->

								<div class="blog-post-content">
									
									<%= text.getArticle_content() %>
									<!-- <p>Curabitur congue dolor sed massa feugiat, sit amet tempor orci convallis. Donec lacus magna, semper eget nisl sed, posuere pellentesque tellus. Cras mauris tellus, ultricies quis hendrerit imperdiet, faucibus non nulla. Cras ex dolor, aliquet eget enim nec, luctus congue nisi. Fusce facilisis in erat vitae cursus.</p>
									<h3>What Is Lorem Ipsum?</h3>
									<p>Lorem Ipsum is <em>simply dummy text of the printing</em> and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
									<p>It has survived not only five centuries, but also the leap into <a href="#">electronic typesetting</a>, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
									<h3>Why Do We Use It?</h3>
									<p>It is a long established fact that a reader will be distracted by the <a href="#">readable content</a> of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
									<p>Many desktop publishing packages and <a href="#">web page editors</a> now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p> -->

								</div><!-- .dslc-blog-post-content -->

							</div><!-- .blog-post-info-inner -->

						</div><!-- .blog-post-info -->

					</div><!-- .blog-post-main -->

				</div><!-- .blog-post -->

				<div class="related-posts white-wrap">

					<div class="section-heading">
						<span class="section-heading-line"></span>
						<span class="section-heading-text">你可能喜欢</span>
					</div><!-- .section-heading -->

					<div class="blog-posts-alt blog-posts-alt-diagonal-effect-enabled clearfix">
				
						<div class="blog-post-alt carousel-item col col-4">

							<div class="blog-post-alt-thumb">

								<div class="blog-post-alt-thumb-inner">
									<a href="read?aid=1"><img src="home/static/images/featured-posts/featured-1.jpg" alt="" /></a>
								</div><!-- .blog-post-alt-thumb-inner -->
								<div class="blog-post-alt-thumb-cover"></div>

							</div><!-- .blog-post-alt-thumb -->

							<div class="blog-post-alt-main">

								<div class="blog-post-alt-main-inner">

									<div class="blog-post-alt-date">
										2019-04-25
									</div><!-- .blog-post-alt-date -->

									<div class="blog-post-alt-title">
										<h2><a href="read?aid=1">未知的光</a></h2>
									</div><!-- .blog-post-alt-title -->

									<div class="blog-post-alt-cat">
										<a href="archives.html">生活</a>
									</div><!-- .blog-post-alt-cat -->

									<div class="blog-post-alt-read-more">
										<a href="read?aid=1">阅读</a>
									</div><!-- .blog-post-alt-read-more -->

								</div><!-- .blog-post-alt-main-inner -->

							</div><!-- .blog-post-alt-main -->

						</div><!-- .blog-post-alt -->

						<div class="blog-post-alt carousel-item col col-4">

							<div class="blog-post-alt-thumb">

								<div class="blog-post-alt-thumb-inner">
									<a href="read?aid=2"><img src="home/static/images/featured-posts/featured-2.jpg" alt="" /></a>
								</div><!-- .blog-post-alt-thumb-inner -->
								<div class="blog-post-alt-thumb-cover"></div>

							</div><!-- .blog-post-alt-thumb -->

							<div class="blog-post-alt-main">

								<div class="blog-post-alt-main-inner">

									<div class="blog-post-alt-date">
										2019-04-26
									</div><!-- .blog-post-alt-date -->

									<div class="blog-post-alt-title">
										<h2><a href="read?aid=2">时光荏苒，蹉跎了谁的年华</a></h2>
									</div><!-- .blog-post-alt-title -->

									<div class="blog-post-alt-cat">
										<a href="archives.html">美文</a>
									</div><!-- .blog-post-alt-cat -->

									<div class="blog-post-alt-read-more">
										<a href="read?aid=2">阅读</a>
									</div><!-- .blog-post-alt-read-more -->

								</div><!-- .blog-post-alt-main-inner -->

							</div><!-- .blog-post-alt-main -->

						</div><!-- .blog-post-alt -->

						<div class="blog-post-alt carousel-item col col-4 col-last">

							<div class="blog-post-alt-thumb">

								<div class="blog-post-alt-thumb-inner">
									<a href="single.html"><img src="home/static/images/featured-posts/featured-3.jpg" alt="" /></a>
								</div><!-- .blog-post-alt-thumb-inner -->
								<div class="blog-post-alt-thumb-cover"></div>

							</div><!-- .blog-post-alt-thumb -->

							<div class="blog-post-alt-main">

								<div class="blog-post-alt-main-inner">

									<div class="blog-post-alt-date">
										2019-04-26
									</div><!-- .blog-post-alt-date -->

									<div class="blog-post-alt-title">
										<h2><a href="single.html">缘起则聚，缘灭则散</a></h2>
									</div><!-- .blog-post-alt-title -->

									<div class="blog-post-alt-cat">
										<a href="archives.html">美文</a>
									</div><!-- .blog-post-alt-cat -->

									<div class="blog-post-alt-read-more">
										<a href="single.html">阅读</a>
									</div><!-- .blog-post-alt-read-more -->

								</div><!-- .blog-post-alt-main-inner -->

							</div><!-- .blog-post-alt-main -->

						</div><!-- .blog-post-alt -->

					</div><!-- .blog-posts-alt -->

				</div><!-- .related-posts -->

				<div id="comments">

					<div class="white-wrap">

						<ol class="comments">
							<!-- 评论栏 -->
							暂无评论……
						</ol>

					</div><!-- .white-wrap -->

				</div><!-- #comments -->

				<div id="leave-comment">

					<div class="white-wrap">

						<div class="section-heading">
							<span class="section-heading-line"></span>
							<span class="section-heading-text">评论</span>
						</div><!-- .section-heading -->

						<form  id="leaveMsgForm" method="post">
							<input type="hidden" name="uname" value="<%= user.getUid() %>" />
							<input type="hidden" name="aid" value="<%= text.getArticle_id() %>" />
							<div class="clearfix">

								<!-- <div class="leave-comment-name col col-4">
									<input name="author" type="text" value="" size="30" placeholder="用户名 *" aria-required="true">
								</div> --><!-- .leave-comment-name -->


							</div><!-- .clearfix -->
							
							<div class="leave-comment-message">
								<textarea name="comment" placeholder="优秀的评论也是内容的一部分，欢迎留下评论！" aria-required="true"></textarea>
							</div><!-- .leave-comment-message -->
							
							<div class="leave-comment-submit">
								<input name="submit" type="submit" id="submit" class="submit" value="发布" />
							</div><!-- .leave-comment-submit -->

						</form>

					</div><!-- .white-wrap -->

				</div><!-- #leave-comment -->

			</div><!-- #content -->

		</div><!-- .wrapper -->

	</div><!-- #main -->

	<%@include file="footer.jsp"%>

	<!-- JavaScript -->
	<script type="text/javascript" src="home/static/javascript/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="home/static/javascript/plugins.js"></script>
	<script type="text/javascript" src="home/static/javascript/main.js"></script>
	<script type="text/javascript" src="home/static/javascript/leavemsg.js"></script>
	
</body>
</html>
