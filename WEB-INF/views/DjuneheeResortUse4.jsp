<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>디준희리조트</title>
    
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css">
    
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
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >이용요금</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="djuneheeResortMain">디준희리조트</a></li>
                                            <li class="breadcrumb-item"><a href="djuneheeResortUse">이용방법</a></li> 
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
                                    
                                        <h3 class="blog_item_date" style="font-size:30px; font-weight:bold;">DjuneheeResort & Casino 이용요금</h3>
                                  
                                </div>
                              <div class="blog_details">
                                    
                                        <h3 class="blog-head" style="color: #2d2d2d;">ㆍ카지노 이용요금</h3>
                                   
                                    <table>
           								 <tr style="background-color: #FD8F5F; text-align: center; font-size: 14px;">
               								 <td>종류</td>
               								 <td>성인</td>
               								 <td>비고</td>
           								 </tr>
            							 <tr>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">입장권</td>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">9,000원</td>

                							<td rowspan="3" style="border: 1px solid #FD8F5F; font-size: 12px;">ㆍDjuneheeReosrt Casino 입장 및 이용 <br>
                        									ㆍ 입장권은 현금필수, 신분증 지참<br>
                    										ㆍ미성년자, 지역주민, 음주고객, 월출입 가능횟수 초과자, 카지노 출입제한자<br>
                    										ㆍ(*고객준수사항 및 출입제한 안내 참고*)<br>
                							</td>

        							</table> 
        							       					  									
        							<br>
        							  
                                        <h3 class="blog-head" style="color: #2d2d2d;">ㆍ객실 이용요금</h3>
                                    
                                    <table>
								<tr style="background-color: #FD8F5F; text-align: center; font-size: 14px;">
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">종류</td>
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">내용</td>
								</tr>
								<tr>
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">비수기</td>
									
									
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">객실마다 가격이 상이하니 객실정보참조</td>
								</tr>
								<tr>
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">성수기/준성수기</td>
									
									<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">객실마다 가격이 상이하니 객실정보참조</td>
								</tr>
							</table>
							<br>
							
                                        <h3 class="blog-head" style="color: #2d2d2d;">ㆍ운영관리규정</h3>
                                    
                                    <table>
           								 <tr style="background-color: #FD8F5F; text-align: center; font-size: 14px;">
               								 <td>기준</td>
               								 <td>4~6일전</td>
               								 <td>2~3일전</td>
               								 <td>1일전</td>
               								 <td>당일&노쇼</td>
           								 </tr>
            							 <tr>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">위약처리기준</td>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">10%</td>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">15%</td>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">20%</td>
                							<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">30%</td>
                						<tr>
                						<td style="border: 1px solid #FD8F5F; text-align: center; font-size: 14px;">주말적용</td>
                							<td colspan="4"style="border: 1px solid #FD8F5F; text-align: center; font-size: 12px;">ㆍ금요일, 토요일, 공휴일 전일 투숙시 적용됩니다.</td>
                						</tr>
                							

        							</table>
							<br/> 
									
										<h3 class="blog-head" style="color: #2d2d2d;">ㆍ우대정보</h3>
									
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;- 타 제휴카드 및 프로모션 등과 중복 우대 적용 불가<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- 신분증 / 서류 확인이 필요한 경우 현장매표소에서만 구입
										가능합니다.
									</p>

									
										<h3 class="blog-head" style="color: #2d2d2d;">ㆍ장애인 우대
											(장애인등록증 제시)</h3>
									
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;- 1일 이용권 우대가로 구입 가능<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- 장애의 정도가 심한 장애인 : 본인+동반 1인<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- 흡연은 흡연구역으로 표시된 지역에서만 가능합니다.<br />
										&nbsp;&nbsp;&nbsp;&nbsp;- 장애의 정도가 심하지 않은 장애인 : 본인
									</p>
								</div>
                            </article>

                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title" style="color: #2d2d2d;">이용 요금</h4>
                                <ul class="list cat-list">
							  		<li>
                                        <a href="djuneheeResortUse" class="d-flex">
                                            <p>이용 방법</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeResortUse2" class="d-flex">
                                            <p>운영 시간</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeResortUse3" class="d-flex">
                                            <p>편의 시설</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeResortUse4" class="d-flex">
                                            <p>이용 요금</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="djuneheeResortUse5" class="d-flex">
                                            <p>우대 정보</p>
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