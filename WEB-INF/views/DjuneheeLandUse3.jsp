<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>디준희랜드</title>
    
  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">    
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightslider.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/price_rangs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gijgo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animated-headline.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    
</head>
<body class="full-wrapper">

   <header>
       <%@ include file = "Header.jsp" %>
   </header>
    <main>
        <!--? slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >편의시설</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="djuneheeLandMain">디준희랜드</a></li>
                                            <li class="breadcrumb-item"><a href="djuneheeLandUse">이용방법</a></li> 
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        <!-- Hero Area End-->
        <!--? Blog Area Start-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="blog_left_sidebar">
                            <article class="blog_item">
                                <div class="blog_item_img">
                                    <img class="card-img rounded-0" src="assets/img/blog/single_blog_1.png" alt="">
                                    
                                        <h3 class="blog_item_date" style="font-size:30px; font-weight:bold;">DjuneheeLand 편의시설</h3>
                                   
                                </div>
                              <div class="blog_details">
										<div>
                              				<img src="${pageContext.request.contextPath}/resources/img/others/convenient1.PNG"/>
                                    		
                                    		<div style="float: right; margin-right: 200px;">
                                    		    <h3 class="blog-head" style="color: #2d2d2d;">ㆍ안내견·도우미견 입장 안내</h3>
                                    		<p>&nbsp;&nbsp;&nbsp;&nbsp;- 애완동물은 입장이 불가합니다.<br/>
                                    		   &nbsp;&nbsp;&nbsp;&nbsp;- 시각장애인 안내견, 청각장애인 도우미견 제외
                                    		</p>
                                    		</div>
                                    		   
                                    	</div>	
                                    	
                                    	<br/>
                                    	
										<div>
    										<img src="${pageContext.request.contextPath}/resources/img/others/convenient2.PNG"/>	
                                     		
                                     		<div style="float: right; margin-right: 235px;">
                                        		<h3 class="blog-head" style="color: #2d2d2d;">ㆍ장애인 전용 주차장</h3>
                                        	<p>&nbsp;&nbsp;&nbsp;&nbsp;- 정문 주차장 장애인 주차 공간 유료 운영<br/>
                                      		   &nbsp;&nbsp;&nbsp;&nbsp;- 1~5번 주차장 장애인 주차공간 무료 운영
                                    		</p>
                                   	 		</div>
											
										</div>
										
										<br/>
										
										
										
										<div>
    										<img src="${pageContext.request.contextPath}/resources/img/others/convenient3.PNG"/ style="height:100%; width:173px;">	
                                     		
                                     		<div style="float: right; margin-right: 140px;">
                                        		<h3 class="blog-head" style="color: #2d2d2d;">ㆍ유모차(16kg 이하) 및 웨건 대여</h3>
                                        	<p>&nbsp;&nbsp;&nbsp;&nbsp;- 1인용 : 5,000원 (보증금 1,000원/16kg 이하/현장결제)<br/>
                                      		   &nbsp;&nbsp;&nbsp;&nbsp;- 웨건 :70,000원(보증금 50,000원/카드가능/현장결제)<br/>
                                      		   &nbsp;&nbsp;&nbsp;&nbsp;- 유모차 잠금 장치 : 5,000원 (보증금 3,000원/현장결제)
                                    		</p>
                                    		</div>
                                   	 													
										</div>
                                </div>
                            </article>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title" style="color: #2d2d2d;">편의시설</h4>
                                 <ul class="list cat-list">
							  		<li>
                                        <a href="djuneheeLandUse" class="d-flex">
                                            <p>이용 방법</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeLandUse2" class="d-flex">
                                            <p>운영 시간</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeLandUse3" class="d-flex">
                                            <p>편의 시설</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeLandUse4" class="d-flex">
                                            <p>이용 요금</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeLandUse5" class="d-flex">
                                            <p>우대 정보</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeLandUse6" class="d-flex">
                                            <p>가이드맵</p>
                                        </a>
                                    </li>
                                 </ul>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Area End -->
    </main>
<footer>
       <%@ include file = "Footer.jsp" %>
</footer>
      <!-- Scroll Up -->
      <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

    <!-- Slick-slider , Owl-Carousel ,slick-nav -->
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

    <!-- One Page, Animated-HeadLin, Date Picker -->
    <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>

    <!-- Nice-select, sticky,Progress -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
</body>
</html>