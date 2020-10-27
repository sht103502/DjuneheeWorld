<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
    
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.13/css/solid.css'>

     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/faqstyle.css">
    
    <style>
    .blog_right_sidebar .single_sidebar_widget{
    	position: fixed;
    	width: 360px;
    }
    </style>
    
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
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >FAQ</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">더알아보기</a></li>
                                            <li class="breadcrumb-item"><a href="#">FAQ</a></li> 
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
        <section class="blog_area section-padding" style="margin-bottom:500px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="blog_left_sidebar">
                            <article class="blog_item">
                                <div class="blog_item_img">
                                    <img class="card-img rounded-0" src="assets/img/blog/single_blog_1.png" alt="">
                                </div>

								<!-- 왼쪽 내용 펼쳐지는 부분(1) -->
								<div id="fuse" class="blog_details">
								<h1 style="font-size:30px;">자주 묻는 질문</h1>
								<br/><br/><br/><br/><br/>
									<h3>이용안내</h3>
									<dl>
										<c:forEach var="faq" items="${faqList}">
											<c:if test="${faq.fcategory eq '001'}">
												<dt>${faq.fquestion}</dt>
												<dd>${faq.fanswer}</dd>
											</c:if>
										</c:forEach>

									</dl>
								</div>

								<!-- 왼쪽 내용 펼쳐지는 부분(2) -->
								<div id="fgroup" class="blog_details">
								<br/><br/><br/><br/><br/>
									<h3>단체예약</h3>
									<dl>
										<c:forEach var="faq" items="${faqList}">
											<c:if test="${faq.fcategory eq '002'}">
												<dt>${faq.fquestion}</dt>
												<dd>${faq.fanswer}</dd>
											</c:if>
										</c:forEach>
									</dl>
								</div>

								<!-- 왼쪽 내용 펼쳐지는 부분(3) -->
								<div id="fresort" class="blog_details">
								<br/><br/><br/><br/><br/>
									<h3>리조트</h3>
									<dl>
										<c:forEach var="faq" items="${faqList}">
											<c:if test="${faq.fcategory eq '003'}">
												<dt>${faq.fquestion}</dt>
												<dd>${faq.fanswer}</dd>
											</c:if>
										</c:forEach>
									</dl>
								</div>

								<!-- 왼쪽 내용 펼쳐지는 부분(4) -->
								<div id="fhomepage" class="blog_details">
								<br/><br/><br/><br/><br/>
									<h3>홈페이지</h3>
									<dl>
										<c:forEach var="faq" items="${faqList}">
											<c:if test="${faq.fcategory eq '004'}">
												<dt>${faq.fquestion}</dt>
												<dd>${faq.fanswer}</dd>
											</c:if>
										</c:forEach>
									</dl>
								</div>

								<!-- 왼쪽 내용 펼쳐지는 부분(5) -->
								<div id="fetc" class="blog_details">
								<br/><br/><br/><br/><br/>
									<h3>기타</h3>
									<dl>
										<c:forEach var="faq" items="${faqList}">
											<c:if test="${faq.fcategory eq '005'}">
												<dt>${faq.fquestion}</dt>
												<dd>${faq.fanswer}</dd>
											</c:if>
										</c:forEach>
									</dl>
								</div>

							</article>
                        </div>
                    </div>
                    <div class="col-lg-4" style="position:sticky; top:900px;">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title" style="color: #2d2d2d;">카테고리</h4>
                                <ul class="list cat-list">
							  		<li>
                                        <a href="#fuse" class="d-flex">
                                            <p>이용 안내</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#fgroup" class="d-flex">
                                            <p>단체 예약</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#fresort" class="d-flex">
                                            <p>리조트</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#fhomepage" class="d-flex">
                                            <p>홈페이지</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#fetc" class="d-flex">
                                            <p>기타</p>
                                        </a>
                                    </li>
                                </ul>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
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
    
    <!-- FAQ JS추가 부분 -->
      <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
    <script  src="${pageContext.request.contextPath}/resources/js/faq.js"></script>
    
</body>
</html>