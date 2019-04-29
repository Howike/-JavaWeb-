<%@page import="cn.wizard.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="no-outlines">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- ==== Document Title ==== -->
    <title>shared on themelock.com</title>
    
    <!-- ==== Document Meta ==== -->
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- ==== Favicon ==== -->
    <link rel="icon" href="favicon.png" type="image/png">

    <!-- ==== Google Font ==== -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CMontserrat:400,500">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
    <link rel="stylesheet" href="assets/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" href="assets/css/morris.min.css">
    <link rel="stylesheet" href="assets/css/select2.min.css">
    <link rel="stylesheet" href="assets/css/jquery-jvectormap.min.css">
    <link rel="stylesheet" href="assets/css/horizontal-timeline.min.css">
    <link rel="stylesheet" href="assets/css/weather-icons.min.css">
    <link rel="stylesheet" href="assets/css/dropzone.min.css">
    <link rel="stylesheet" href="assets/css/ion.rangeSlider.min.css">
    <link rel="stylesheet" href="assets/css/ion.rangeSlider.skinFlat.min.css">
    <link rel="stylesheet" href="assets/css/datatables.min.css">
    <link rel="stylesheet" href="assets/css/fullcalendar.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Page Level Stylesheets -->
    
</head>
<body>

    <!-- Wrapper Start -->
    <div class="wrapper">
        <!-- Navbar Start -->
        <%@include file="assets/static/sidebar.jsp" %>
        <!-- Navbar End -->
        <!-- Main Container Start -->
        <main class="main--container">
            <!-- Page Header Start -->
            <section class="page--header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Page Title Start -->
                            <h2 class="page--title h5">个人主页</h2>
                            <!-- Page Title End -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- Page Header End -->

            <!-- Main Content Start -->
            <section class="main--content">
                <div class="row gutter-20">
                    <div class="col-lg-8">
                        <!-- Panel Start -->
                        <div class="panel profile-cover">
                            <div class="profile-cover__img">
                                <img src="assets/img/avatars/01_150x150.png" alt="">
                                <h3 class="h3"><%= user.getUname() %></h3>
                            </div>

                            <div class="profile-cover__action" data-bg-img="assets/img/covers/01_800x150.jpg" data-overlay="0.3">
                                <button class="btn btn-rounded btn-info">
                                    <i class="fa fa-plus"></i>
                                    <span>关注</span>
                                </button>

                                <button class="btn btn-rounded btn-info">
                                    <i class="fa fa-comment"></i>
                                    <span>消息</span>
                                </button>
                            </div>

                            <div class="profile-cover__info">
                                <ul class="nav">
                                    <li><strong>0</strong>作品</li>
                                    <li><strong>0</strong>关注数</li>
                                    <li><strong>0</strong>粉丝数</li>
                                </ul>
                            </div>
                        </div>
                        <!-- Panel End -->

                        <!-- Panel Start -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">动 态</h3>
                            </div>

                            <div class="panel-content panel-activity">
                                <form action="#" class="panel-activity__status">
                                    <textarea name="user_activity" placeholder="分享的你的idea..." class="form-control"></textarea>

                                    <div class="actions">
                                        <div class="btn-group">
                                            <button type="button" class="btn-link" title="图片" data-toggle="tooltip">
                                                <i class="far fa-image"></i>
                                            </button>

                                            <button type="button" class="btn-link" title="视频" data-toggle="tooltip">
                                                <i class="fas fa-video"></i>
                                            </button>

                                            <button type="button" class="btn-link" title="点子" data-toggle="tooltip">
                                                <i class="far fa-lightbulb"></i>
                                            </button>

                                            <button type="button" class="btn-link" title="问题" data-toggle="tooltip">
                                                <i class="fas fa-question-circle"></i>
                                            </button>
                                        </div>

                                        <button type="submit" class="btn btn-sm btn-rounded btn-info">发 送</button>
                                    </div>
                                </form>

                                <ul class="panel-activity__list">
                                    <li>
                                        <i class="activity__list__icon fas fa-question-circle"></i>

                                        <div class="activity__list__header">
                                            <img src="assets/img/avatars/01_40x40.png" alt="">
                                            <a href="#"><%= user.getUname() %></a> 提出问题: <a href="#">我们应该怎么设计捏？~(￣▽￣)~*</a>
                                        </div>

                                        <div class="activity__list__body entry-content">
                                            <p>emm……这个问题，我也不知道呐</p>
                                        </div>

                                        <div class="activity__list__footer">
                                            <a href="#"><i class="far fa-thumbs-up"></i>0</a>
                                            <a href="#"><i class="far fa-comments"></i>0</a>
                                            <span><i class="far fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>

                                    <li>
                                        <i class="activity__list__icon far fa-image"></i>

                                        <div class="activity__list__header">
                                            <img src="assets/img/avatars/01_40x40.png" alt="">
                                            <a href="#"><%= user.getUname() %></a> 上传4张图片: <a href="#">text</a>
                                        </div>

                                        <div class="activity__list__body entry-content">
                                            <ul class="gallery">
                                                <li><img src="assets/img/gallery/01.jpg" alt=""></li>
                                                <li><img src="assets/img/gallery/02.jpg" alt=""></li>
                                                <li><img src="assets/img/gallery/03.jpg" alt=""></li>
                                                <li><img src="assets/img/gallery/04.jpg" alt=""></li>
                                            </ul>
                                        </div>

                                        <div class="activity__list__footer">
                                            <a href="#"><i class="far fa-thumbs-up"></i>0</a>
                                            <a href="#"><i class="far fa-comments"></i>0</a>
                                            <span><i class="far fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <!-- Panel End -->
                    </div>

                    <div class="col-lg-4">
                        <!-- Panel Start -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">关于我</h3>
                            </div>

                            <div class="panel-content panel-about">
                                <p>这里是个人介绍</p>

                                <table>
                                    <tr>
                                        <th><i class="fas fa-birthday-cake"></i>生日</th>
                                        <td>--:--:--</td>
                                    </tr>
                                    <tr>
                                        <th><i class="fas fa-map-marker-alt"></i>地区</th>
                                        <td>--</td>
                                    </tr>
                                    <tr>
                                        <th><i class="fas fa-mobile-alt"></i>电话</th>
                                        <td><a href="tel:7328397510" class="btn-link">--</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!-- Panel End -->                

                        <!-- Panel Start -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">待办清单</h3>

                                <div class="dropdown">
                                    <button type="button" class="btn-link dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-ellipsis-v"></i>
                                    </button>

                                    <ul class="dropdown-menu">
                                        <li><a href="#"><i class="fa fa-sync"></i>更新</a></li>
                                        <li><a href="#"><i class="fa fa-times"></i>移除部件</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="todo--panel">
                                <form action="#">
                                    <ul class="list-group" data-trigger="scrollbar">
                                        <li class="list-group-item">
                                            <label class="todo--label">
                                                <input type="checkbox" name="checkbox" value="6" class="todo--input">
                                                <span class="todo--text">创建第一个账户</span>
                                            </label>

                                            <a href="#" class="todo--remove">&times;</a>
                                        </li>
                                    </ul>

                                    <div class="input-group">
                                        <input type="text" name="todo" placeholder="Add New Task" class="form-control" autocomplete="off" required>

                                        <div class="input-group-btn">
                                            <button type="submit" class="btn-link">+</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Panel End -->
                        
                    </div>
                </div>
            </section>
            <!-- Main Content End -->

            <!-- Main Footer Start -->
            <footer class="main--footer main--footer-light">
                <p>Copyright &copy; <a href="#">DAdmin</a>. All Rights Reserved.</p>
            </footer>
            <!-- Main Footer End -->
        </main>
        <!-- Main Container End -->
    </div>
    <!-- Wrapper End -->

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/perfect-scrollbar.min.js"></script>
    <script src="assets/js/jquery.sparkline.min.js"></script>
    <script src="assets/js/raphael.min.js"></script>
    <script src="assets/js/morris.min.js"></script>
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/jquery-jvectormap.min.js"></script>
    <script src="assets/js/jquery-jvectormap-world-mill.min.js"></script>
    <script src="assets/js/horizontal-timeline.min.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/jquery.steps.min.js"></script>
    <script src="assets/js/dropzone.min.js"></script>
    <script src="assets/js/ion.rangeSlider.min.js"></script>
    <script src="assets/js/datatables.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!-- Page Level Scripts -->

</body>
</html>
