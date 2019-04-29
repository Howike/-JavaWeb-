<%@page import="cn.wizard.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <!-- Navbar Start -->
        <header class="navbar navbar-fixed">
            <!-- Navbar Header Start -->
            <div class="navbar--header">
                <!-- Logo Start -->
                <a href="home.jsp" class="logo">
                    <img src="assets/img/logo1.png" alt="">
                </a>
                <!-- Logo End -->

                <!-- Sidebar Toggle Button Start -->
                <a href="javascript:void(0)" class="navbar--btn" data-toggle="sidebar" title="侧边栏">
                    <i class="fa fa-bars"></i>
                </a>
                <!-- Sidebar Toggle Button End -->
            </div>
            <!-- Navbar Header End -->

            <!-- Sidebar Toggle Button Start -->
            <a href="javascript:void(0)" class="navbar--btn" data-toggle="sidebar" title="侧边栏">
                <i class="fa fa-bars"></i>
            </a>
            <!-- Sidebar Toggle Button End -->

            <!-- Navbar Search Start -->
            <div class="navbar--search">
                <form action="search-results.html">
                    <input type="search" name="search" class="form-control" placeholder="要找什么呐(ﾉ≧∀≦)ﾉ" required>
                    <button class="btn-link"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <!-- Navbar Search End -->

            <div class="navbar--nav ml-auto">
                <ul class="nav">
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="fa fa-bell"></i>
                            <!-- 提醒数 -->
                            <span class="badge text-white bg-blue"></span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="mailbox_inbox.jsp" class="nav-link">
                            <i class="fa fa-envelope"></i>
                            <!-- 消息数 -->
                            <span class="badge text-white bg-blue"></span>
                        </a>
                    </li>                 

                    <!-- Nav User Start -->
                    <li class="nav-item dropdown nav--user online">
                        <a href="#" class="nav-link" data-toggle="dropdown">
                            <img src="assets/img/avatars/01_80x80.png" alt="" class="rounded-circle">
                            <span><%= user.getUname() %></span>
                            <i class="fa fa-angle-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a href="home.jsp"><i class="far fa-user"></i>个人主页</a></li>
                            <li><a href="mailbox_inbox.jsp"><i class="far fa-envelope"></i>消息</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i>设置</a></li>
                            <li class="dropdown-divider"></li>
                            <li><a href="/wizard/user?oper=exit"><i class="fa fa-power-off"></i>退出</a></li>
                        </ul>
                    </li>
                    <!-- Nav User End -->
                </ul>
            </div>
        </header>
        <!-- Navbar End -->

        <!-- Sidebar Start -->
        <aside class="sidebar" data-trigger="scrollbar">
            <!-- Sidebar Profile Start -->
            <div class="sidebar--profile">
                <div class="profile--img">
                    <a href="profile.html">
                        <img src="assets/img/avatars/01_80x80.png" alt="" class="rounded-circle">
                    </a>
                </div>

                <div class="profile--name">
                    <a href="profile.html" class="btn-link"><%= user.getUname() %></a>
                </div>

                <div class="profile--nav">
                    <ul class="nav">
                        <li class="nav-item">
                            <a href="jsp" class="nav-link" title="个人主页">
                                <i class="fa fa-user"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="mailbox_inbox.jsp" class="nav-link" title="消息">
                                <i class="fa fa-envelope"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/wizard/user?oper=exit" class="nav-link" title="退出">
                                <i class="fa fa-sign-out-alt"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Sidebar Profile End -->

            <!-- Sidebar Navigation Start -->
            <div class="sidebar--nav">
                <ul>
                    <li>
                        <ul>
                            <li class="active">
                                <a href="home.jsp">
                                    <i class="fa fa-home"></i>
                                    <span>首 页</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">                                   
                                    <i class="fa fa-comment"></i>
                                    <span>创作中心</span>
                                </a>

                                <ul>
                                    <li><a href="upload-manager.jsp">文 章</a></li>
                                    <li><a href="products-edit.jsp">编辑文章</a></li>
                                    <li><a href="upload.jsp">投 稿</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>                   
                                    
                    <li>
                        <a href="#">个人中心</a>

                        <ul>
                            <li>
                                <a href="#">
                                    <i class="far fa-envelope"></i>
                                    <span>消息</span>
                                </a>

                                <ul>
                                    <li><a href="mailbox_inbox.jsp">新消息</a></li>
                                    <li><a href="mailbox_compose.jsp">发消息</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="chat.jsp">
                                    <i class="far fa-comments"></i>
                                    <span>聊天</span>
                                </a>
                            </li>
                            <li>
                                <a href="contacts.jsp">
                                    <i class="far fa-address-book"></i>
                                    <span>关注</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">实验室</a>

                        <ul>
                            <li>
                                <a href="#">
                                    <i class="fa fa-file"></i>
                                    <span>实验室</span>
                                </a>

                                <ul>
                                    <li><a href="login.html">登录</a></li>
                                    <li><a href="register.html">注册</a></li>
                                    <li><a href="forgot-password.html">忘记密码</a></li>
                                    <li><a href="lock-screen.html">锁屏</a></li>
                                    <li><a href="maintenance.html">维护页面</a></li>
                                    <li><a href="coming-soon.html">即将到来</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- Sidebar Navigation End -->           
        </aside>
        <!-- Sidebar End -->
</body>
</html>