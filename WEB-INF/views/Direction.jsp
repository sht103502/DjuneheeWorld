<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>더알아보기</title>
    
  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <style>
    table {
    border-bottom: dotted 1px lightgray;
    width: 500px;
    font-size: 12px;
    margin-top: 15px;
}
    </style>
      
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
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >대중교통</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">더 알아보기</a></li>
                                            <li class="breadcrumb-item"><a href="direction">오시는 길</a></li> 
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

        
        <!--오시는길 Area start  -->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list" style="background-color:#fbf9ff;">
               <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/others/train1.png" alt="">
                  </div>
                  <div class="blog_details">
                     
                     <!-- 대중교통 -->	
                     <!-- 지하철 -->
                     <img src="${pageContext.request.contextPath}/resources/img/others/useTrain.jpg">
										<p>
											분당선 기흥역까지 오셔서 디준희라인(경전철)으로 환승하세요!<br/>
											- 디준희라인종점에 내려서 셔틀버스로 디준희랜드, 디준희리조트 까지 이동<br/>
											- 디준희라인 운행시간 06:30~23:30
										</p>
                     
                     <!-- 버스 -->
										<img src="${pageContext.request.contextPath}/resources/img/others/useBus.jpg">
										<p>
											주차 안내 캐스트가 가까운 주차장으로 안내해 드립니다.<br> 주차장–정문 간 셔틀버스(무료)가
											수시로 운행됩니다. (유모차 탑승 가능)
										</p>
										
					<!-- 버스 노선 -->
                    
                    <img src="${pageContext.request.contextPath}/resources/img/others/seoulBus.gif">
										<p style="font-size: 12px;">◎ 일반버스</p>
										
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/red_bus.gif"></td>
												<th>5002번</th>
											</tr>
											<tr>
												<td>신논현역 – 강남역 - 양재역 경유</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/red_bus.gif"></td>
												<th>5700번</th>
											</tr>
											<tr>
												<td>강변역 - 잠실역 – 송파역 - 수서역 경유</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/red_bus.gif"></td>
												<th>1500-2번</th>
											</tr>
											<tr>
												<td>사당역 - 남부터미널 – 판교역 - 분당(서현역) 경유</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/red_bus.gif"></td>
												<th>1113번</th>
											</tr>
											<tr>
												<td>강변역 - 강동역 – 광주시청 - 외대입구 경유</td>
											</tr>
										</table>
										<br/>
										
										<!-- 인천버스  -->
										<img src="${pageContext.request.contextPath}/resources/img/others/incheonBus.gif">
										<p style="font-size: 12px;">◎ 직행버스</p>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/nonstop_bus.gif"></td>
												<th>8478번</th>
											</tr>
											<tr>
												<td>고양(화정,백석)터미널 - 부천터미널 – 광교중앙역 (NEW LINE)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/nonstop_bus.gif"></td>
												<th>8862번</th>
											</tr>
											<tr>
												<td>인천터미널 - 수원영통</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/nonstop_bus.gif"></td>
												<th>8839번</th>
											</tr>
											<tr>
												<td>인천터미널 - 범계역</td>
											</tr>
										</table>
										
										<p style="font-size: 12px; margin-top:10px;">◎ 일반버스</p>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/green_bus.gif"></td>
												<th>66번</th>
											</tr>
											<tr>
												<td>수원역 – 수원 – 용인 경유</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/green_bus.gif"></td>
												<th>66-4번</th>
											</tr>
											<tr>
												<td>수원역 – 수원 – 동백 – 용인 경유</td>
											</tr>
										</table>
										<table>
											<tr>
												<td rowspan="2" id="dtable" style="width:170px">&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/img/others/green_bus.gif"></td>
												<th>670번</th>
											</tr>
											<tr>
												<td>광교 – 수지 – 죽전 – 동백 경유</td>
											</tr>
										</table><br/><br/>              
                      </div>
               </div>
      </div>
   
       <!-- 오른쪽 네비게이션 메뉴 -->
      <div class="col-lg-4">
         <div class="blog_right_sidebar">
           
            <aside class="single_sidebar_widget post_category_widget">
               <h4 class="widget_title" style="color: #2d2d2d;">오시는 길</h4>
               <ul class="list cat-list">
                  <li>
                     <a href="direction" class="d-flex">
                        <p>대중교통</p>
                     </a>
                  </li>
                  <li>
                     <a href="directionMycar" class="d-flex" >
                        <p>자가용 및 주차장</p>
                     </a>
                  </li>
                  <li>
                     <a href="directionMycar2" class="d-flex">
                        <p>지도</p>
                     </a>
                  </li>

               </ul>
            </aside>
         </div>
      </div>
   </div>
</div>
</section>
        <!-- Contact Area End -->
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
    <script src="${pageContext.request.contextPath}/resources/ontext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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