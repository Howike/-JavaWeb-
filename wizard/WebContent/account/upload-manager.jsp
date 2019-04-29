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
		<%@include file="assets/static/sidebar.jsp" %>
        <!-- Navbar End -->
        
        <!-- Main Container Start -->
        <main class="main--container">
            <!-- Page Header Start -->
<!--             <section class="page--header"> -->
<!--                 <div class="container-fluid"> -->
<!--                     <div class="row"> -->
<!--                         <div class="col-lg-6"> -->
<!--                             Page Title Start -->
<!--                             <h2 class="page--title h5">内容管理</h2> -->
<!--                             Page Title End -->

<!--                             <ul class="breadcrumb"> -->
<!--                                 <li class="breadcrumb-item"><a href="index.html">创作中心</a></li> -->
<!--                                 <li class="breadcrumb-item active"><span>内容管理</span></li> -->
<!--                             </ul> -->
                            
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </section> -->
            <!-- Page Header End -->

            <!-- Main Content Start -->
            <section class="main--content">
                <div class="panel">
                    

                    <div class="panel-content">
                        <!-- Search Box Start -->
                        <div class="search--box">
                            <form action="#">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="搜索内容..." required>

                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-rounded btn-info"><i class="fa fa-search mr-1"></i> 搜索</button>
                                    </div>
                                </div>
                            </form>

                            <ul class="options">
                                <li class="active"><a href="#">全部</a></li>
<!--                                 <li><a href="#">Users</a></li> -->
<!--                                 <li><a href="#">Messages</a></li> -->
                            </ul>
                        </div>
                        <!-- Search Box End -->

                        <!-- Search Results Start -->
                        <div class="search--results">
                           
                            <ul class="results list-unstyled">
                            
                              <!--   <li>
                                    <a href="#">
                                        <h4 class="h4 title">test测试</h4>

                                        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero dolores accusantium aperiam neque consequatur ad iusto quae repellendus ab saepe atque, eaque qui reprehenderit voluptatum natus esse sed beatae ducimus.</p>

                                        <span class="link">http://example.com/page</span>
                                    </a>
                                </li>
                                 -->
<!--                                 <li> -->
<!--                                     <a href="#"> -->
<!--                                         <h4 class="h4 title">UI Elements</h4> -->

<!--                                         <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero dolores accusantium aperiam neque consequatur ad iusto quae repellendus ab saepe atque, eaque qui reprehenderit voluptatum natus esse sed beatae ducimus.</p> -->

<!--                                         <span class="link">http://example.com/page</span> -->
<!--                                     </a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#"> -->
<!--                                         <h4 class="h4 title">Data Validation</h4> -->

<!--                                         <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero dolores accusantium aperiam neque consequatur ad iusto quae repellendus ab saepe atque, eaque qui reprehenderit voluptatum natus esse sed beatae ducimus.</p> -->

<!--                                         <span class="link">http://example.com/page</span> -->
<!--                                     </a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#"> -->
<!--                                         <h4 class="h4 title">Notes</h4> -->

<!--                                         <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero dolores accusantium aperiam neque consequatur ad iusto quae repellendus ab saepe atque, eaque qui reprehenderit voluptatum natus esse sed beatae ducimus.</p> -->

<!--                                         <span class="link">http://example.com/page</span> -->
<!--                                     </a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#"> -->
<!--                                         <h4 class="h4 title">Timeline</h4> -->

<!--                                         <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero dolores accusantium aperiam neque consequatur ad iusto quae repellendus ab saepe atque, eaque qui reprehenderit voluptatum natus esse sed beatae ducimus.</p> -->

<!--                                         <span class="link">http://example.com/page</span> -->
<!--                                     </a> -->
<!--                                 </li> -->
                            </ul>

                            <ul class="pagination pagination-sm justify-content-end mt-3">
                                <li class="page-item">
                                    <a href="#" class="page-link"><i class="fa fa-angle-left"></i></a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
<!--                                 <li class="page-item"> -->
<!--                                     <a href="#" class="page-link">2</a> -->
<!--                                 </li> -->
<!--                                 <li class="page-item"> -->
<!--                                     <a href="#" class="page-link">3</a> -->
<!--                                 </li> -->
<!--                                 <li class="page-item"> -->
<!--                                     <a href="#" class="page-link">4</a> -->
<!--                                 </li> -->
<!--                                 <li class="page-item"> -->
<!--                                     <a href="#" class="page-link">5</a> -->
<!--                                 </li> -->
                                <li class="page-item">
                                    <a href="#" class="page-link"><i class="fa fa-angle-right"></i></a>
                                </li>
                            </ul>
                        </div>
                        <!-- Search Results End -->
                    </div>
                </div>
            </section>
            <!-- Main Content End -->

            <!-- Main Footer Start -->
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
    <script src="assets/js/ajax.js"></script>

    <!-- Page Level Scripts -->

</body>
</html>
