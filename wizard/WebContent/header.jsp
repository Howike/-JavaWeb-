<%@page import="cn.wizard.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>Josephine - HTML Template</title>

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
<% 
User user = (User)session.getAttribute("user");
if(null == user)
{
    response.sendRedirect("/wizard/login.jsp");
    return;
}
%>
<header id="header">
	<div id="header-top">
		<div class="wrapper clearfix">
				
				<nav id="navigation">
					<ul class="menu">
						<li class="current-menu-item">
							<a href="index.jsp">首 页</a>
<!-- 							<ul>
								<li class="current-menu-item"><a href="index.html">Home Version 1</a></li>
								<li><a href="home-2.html">Home Version 2</a></li>
								<li><a href="home-3.html">Home Version 3</a></li>
								<li><a href="home-4.html">Home Version 4</a></li>
							</ul> -->
						</li>
						<li>
							<a href="single.html">实验室</a>
							<ul>
								<li><a href="single.html">Right Sidebar</a></li>
								<li><a href="single-left-sidebar.html">Left Sidebar</a></li>
								<li><a href="single-no-sidebar.html">No Sidebar</a></li>
							</ul>
						</li>
						<li><a href="account/home.jsp">动 态</a></li>
						<li><a href="account/upload.jsp">投 稿</a></li>
						<li><a href="archives.html">标 签</a></li>
						<li><a href="search.html">搜 索</a></li>
					</ul><!-- .menu -->
				</nav><!-- #navigation -->

				<div id="navigation-hamburger">

					<span class="navigation-hamburger-hook"><span class="fa fa-reorder"></span></span>
					<select>
						<option value="#">- Select -</option>
						<!-- automatically populated based on #navigation -->
					</select>

				</div><!-- #navigation-hamburger -->
				
				<div id="header-search">
					<div class="header-search-inner">
						<form method="get" action="search.html">
							<input type="text" name="s" placeholder="搜索" />
						</form>
						<span class="header-search-icon"><span class="fa fa-search"></span></span>
					</div><!-- .search-form-wrapper -->
				</div><!-- #header-search -->

				<div id="header-social">
					<!--  
					<a href="#" target="_blank" class="fa fa-twitter"></a>
					<a href="#" target="_blank" class="fa fa-facebook"></a>
					<a href="#" target="_blank" class="fa fa-youtube-play"></a>
					<a href="#" target="_blank" class="fa fa-vimeo"></a>
					<a href="#" target="_blank" class="fa fa-tumblr"></a>
					-->>
					
                    <ul class="menu">
                    	<li class="current-menu-item">
							<a href="/wizard/account/home.jsp"><%= user.getUname() %></a>
							<ul>
								<li><a href="/wizard/account/home.jsp"><i class="fa fa-user"></i>个人中心</a></li>
								<li><a href="/wizard/account/mailbox_inbox.jsp"><i class="fa fa-envelope"></i>消 息</a></li>
                            	<li><a href="#"><i class="fa fa-cog"></i>设 置</a></li>
                            	<li class="dropdown-divider"></li>
                            	<li><a href="user?oper=exit" id="exit"><i class="fa fa-power-off"></i>退 出</a></li>
							</ul>
						</li>       
                    </ul>
				</div><!-- #header-social -->

			</div><!-- .wrapper -->

		</div><!-- #header-top -->

		<div id="header-main">

			<div class="wrapper">

			 	<a href="index.html" title="Josephine" rel="home">						
					<img src="home/static/images/logo.png" alt="Josephine" />
				</a>

			</div><!-- .wrapper -->

		</div><!-- #header-main -->

	</header><!-- #header -->
</body>
</html>