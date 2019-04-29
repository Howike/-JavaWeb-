<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en" class="no-outlines">
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- ==== Document Title ==== -->
    <title>theme shared on themelock.com</title>
    
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
        <%@include file="assets/static/sidebar.jsp"%>
        <!-- Sidebar End -->
		<!-- Navbar End -->
        <!-- Main Container Start -->
        <main class="main--container">
            <!-- Page Header Start -->
            <section class="page--header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Page Title Start -->
                            <h2 class="page--title h5">收信箱</h2>
                            <!-- Page Title End -->

                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">消息</a></li>
                                <li class="breadcrumb-item active"><span>收信箱</span></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </section>
            <!-- Page Header End -->

            <!-- Main Content Start -->
            <section class="main--content">
                <div class="panel">
                    <!-- App Start -->
                    <div class="app_wrapper row">
                        <!-- App Sidebar Start -->
                        <div class="app_sidebar col-lg-3 col-md-6">
                            <!-- Toolbar Start -->
                            <div class="toolbar">
                                <a href="mailbox_compose.jsp" class="btn btn-block btn-rounded btn-danger fw--600">写信</a>
                            </div>
                            <!-- Toolbar End -->

                            <!-- Mailbox Navigation Start -->
                            <ul class="navigation navigation-highlighted">
                                <li class="title">消息</li>
                                <li class="active">
                                    <a href="#">
                                        <i class="far fa-envelope"></i>
                                        <span>收信箱</span>
                                        <!-- 收信数 -->
                                        <span class="badge text-blue bg-white"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-paper-plane"></i>
                                        <span>发送</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="has-unread">
                                        <i class="far fa-edit"></i>
                                        <span>草稿</span>
                                        <!-- 草稿数 -->
                                        <span class="badge text-white bg-blue"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-star"></i>
                                        <span>星标</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-tags"></i>
                                        <span>标签</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-trash-alt"></i>
                                        <span>垃圾箱</span>
                                    </a>
                                </li>

                                <li class="title">类型</li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-circle text-blue"></i>
                                        <span>工作</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-circle text-green"></i>
                                        <span>家庭</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-circle text-orange"></i>
                                        <span>朋友</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="far fa-circle text-red"></i>
                                        <span>其它</span>
                                    </a>
                                </li>
                            </ul>
                            <!-- Mailbox Navigation End -->
                        </div>
                        <!-- App Sidebar End -->

                        <!-- App Sidebar Start -->
                        <div class="app_sidebar col-lg-3 col-md-6">
                            <!-- Toolbar Start -->
                            <div class="toolbar">
                                <!-- App Search Bar Start -->
                                <form action="#" method="get" class="app_searchBar w-100">
                                    <input type="search" name="emails" placeholder="搜索消息..." class="form-control" required>

                                    <button type="submit" class="btn btn-rounded">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </form>
                                <!-- App Search Bar End -->
                            </div>
                            <!-- Toolbar End -->

                            <!-- User List Start -->
                            <div class="user--list-w" data-trigger="scrollbar">
                                <ul class="user--list">
                                    <li class="active">
                                        <a href="#" class="star-icon is-stared"></a>

                                        <a href="#" class="list-link">
                                            <div class="avatar">
                                                <img src="assets/img/avatars/03_80x80.png" alt="">
                                            </div>

                                            <div class="info">
                                                <h4 class="title">
                                                    <span class="title-text">Jane Doe</span>
                                                    <span class="time">Yesterday</span>
                                                </h4>

                                                <p class="subtitle">It’s Time To Rethink Black Friday</p>

                                                <p class="desc">
                                                    <span class="desc-text">Lorem Company Inc.</span>
                                                    <span class="label label-orange">朋友</span>
                                                </p>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- User List End -->
                        </div>
                        <!-- App Sidebar End -->
                        
                        <!-- App Content Start -->
                        <div class="app_content col-lg-6">
                            <!-- Toolbar Start -->
                            <div class="toolbar">
                                <ul class="toolbar__nav nav">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-reply"></i>
                                            <span>回复</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-reply-all"></i>
                                            <span>回复所有</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-share"></i>
                                            <span>转发</span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="toolbar__pager btn-group ml-auto">
                                    <a href="#" class="btn btn-sm btn-rounded btn-outline-secondary">
                                        <i class="fa fa-angle-left"></i>
                                    </a>

                                    <a href="#" class="btn btn-sm btn-rounded btn-outline-secondary">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- Toolbar End -->

                            <!-- Main Sendar Info Start -->
                            <div class="main-sender-info">
                                <div class="main-sender-info__name">
                                    <img src="assets/img/avatars/03_80x80.png" alt="">
                                    <a href="#">Jane Doe</a> to <span>me</span>
                                </div>

                                <div class="main-sender-info__detail">
                                    <a href="#" class="star-icon is-stared"></a>
                                    <span>13 July, 3:30 pm</span>
                                </div>
                            </div>
                            <!-- Main Sendar Info End -->

                            <!-- Mail Subject Line Start -->
                            <div class="mail-subject-line">
                                <h3 class="h3">It’s Time To Rethink Black Friday</h3>
                            </div>
                            <!-- Mail Subject Line End -->

                            <!-- Mail View Start -->
                            <div class="mail-view">
                                <p>Hello,</p>
                                
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Magnam aperiam nostrum libero qui facilis corporis vero animi illum laboriosam. Voluptates nobis neque, excepturi repellat tempora fugit dolores veniam! Dicta, aliquam.</p>
                                
                                <p>Inventore quae neque, nisi, eaque perferendis quo officiis hic aliquid impedit itaque tempore incidunt? Perferendis laudantium earum maiores alias saepe assumenda exercitationem magni, totam tempore animi deleniti ex beatae corporis.</p>
                                
                                <p>Minus laborum magnam fugit architecto perspiciatis, omnis porro asperiores nemo, perferendis ex soluta magni. Dolore autem ab non cum sunt minima vero itaque nobis? Consequatur provident animi modi? Natus, asperiores!</p>
                                
                                <p>Thank you, for you consideration.</p>
                                
                                <p>Regards,<br>Jane Doe</p>
                            </div>
                            <!-- Mail View End -->

                            <!-- Mail Attachments Start -->
                            <div class="mail-attachements">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Attachment (2 Files, 18.32 KB)</th>
                                            <th><a href="#">View All</a></th>
                                            <th><a href="#">Download All</a></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <i class="fa fa-paperclip"></i>
                                                <a href="#">Text Documents</a>
                                                <span>(9.32 KB)</span>
                                            </td>
                                            <td><a href="#">View</a></td>
                                            <td><a href="#">Download</a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <i class="fa fa-paperclip"></i>
                                                <a href="#">Text Documents</a>
                                                <span>(8.32 KB)</span>
                                            </td>
                                            <td><a href="#">View</a></td>
                                            <td><a href="#">Download</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Mail Attachments End -->
                        </div>
                        <!-- App Content End -->
                    </div>
                    <!-- App Sidebar End -->
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
