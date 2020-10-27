<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>디준희랜드 메인</title>
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
<body>
 	  <header>
        <%@ include file = "Header.jsp" %>
      </header>   
    <main>
        <!--? slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly1 slider-height d-flex align-items-center slider-bg1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <!-- slider Area End-->
        
        <!--? New Arrival-2 Start -->
        <div class="new-arrival new-arrival2">
            <div class="container">
                <!-- Section tittle -->
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-8 col-md-10">
                        <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                            <h2>Favorite Attraction</h2>
                            <P>DjuneheeLand의 인기있는 놀이기구</P>
                        </div>
                    </div>
                </div>
                <div class="row">
                
                <c:forEach var="top3Attraction" items="${top3Attraction}">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-new-arrival mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                            <div class="popular-img" >
                                <img src="${pageContext.request.contextPath}/resources/img/attraction/${top3Attraction.afilename}" alt="" style="width:287px; height:256px;">
                            </div>
                            <div class="popular-caption">
                                <h3><a href="attraction">${top3Attraction.aname}</a></h3>
                                <span>${top3Attraction.rn}위</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
 
                </div>
                <!-- Button -->
               <div class="row justify-content-center">
                    <div class="room-btn">
                        <a href="attraction" class="border-btn">Attraction More</a>
                    </div>
                </div> 
            </div>
        </div>
        <!--? New Arrival End -->
        
        <!-- Properties End -->
        <!--? Visit Our Tailor Start -->
        <div class="visit-tailor-area fix">
            <!--Right Contents  -->
            <div class="tailor-offers"></div>
            <!-- left Contents -->
            <div class="tailor-details">
                <h2>DjuneheeLand Entertainment</h2>
                <p>다양한 공연 및 퍼레이드 와 아쿠아리움까지 !</p>
                <p class="pera-bottom">다양한 공연정보를 확인해보세요.</p>
                <a href="entertainment" class="btn">entertainment More</a>
            </div>

        </div>
        <!-- Visit Our Tailor End -->

        
        <!--? instagram-social start -->
        <div class="instagram-area">
            <div class="container-fluid">
                <div class="row align-items-center" style="margin-top:10%;">
                    <div class="col-xl-3 col-lg-4 col-md-6">
                     <div class="instra-tittle mb-40">
                        <div class="section-tittle">
                            <!-- <img src="assets/img/gallery/insta.png" alt=""> -->
                            <h2>DjuneheeLand Events</h2>
                            <P class="mb-35">DjuneheeLand의 다양한 Events 알아보기</P>
                            <a href="events" class="border-btn">Events More</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8">
                    <div class="row no-gutters">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                            <div class="single-instagram">
                                <img src="${pageContext.request.contextPath}/resources/img/land/LandMain5.jpg" alt="" 
                                	 style="width:300px; height:240px; margin-right:10%;" class="w-100">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                            <div class="single-instagram">
                                <img src="${pageContext.request.contextPath}/resources/img/land/LandMain6.jpg" alt="" 
                                	 style="width:300px; height:240px;" class="w-100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- instagram-social End -->
    <!--? New Arrival-3 Start -->
    <div class="new-arrival new-arrival2">
        <div class="container">
            <!-- Section tittle -->
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8 col-md-10">
                    <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <h2>DjuneheeLand News</h2>
                        <P>DjuneheeLand의 다양한 소식을 만나보세요.</P>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-new-arrival mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                        <div class="popular-img">
                            <img src="${pageContext.request.contextPath}/resources/img/land/LandMain1.PNG" alt="">
                        </div>
                        <div class="popular-caption">
                            <h3><a href="events">교복 이벤트</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-new-arrival mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                        <div class="popular-img">
                            <img src="${pageContext.request.contextPath}/resources/img/land/LandMain2.PNG" alt="">
                        </div>
                        <div class="popular-caption">
                            <h3><a href="djuneheeLandUse4">연간 이용안내</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-new-arrival mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="popular-img">
                            <img src="${pageContext.request.contextPath}/resources/img/land/LandMain3.PNG" alt="">
                        </div>
                        <div class="popular-caption">
                            <h3><a href="reservationLand">이용권 구매하기</a></h3>
                        </div>
                    </div>
                </div>
            </div>
         </div>
     </div>

 
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

<!-- One Page, Animated-HeadLin, Date Picker , price, light-slider -->
<script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/lightslider.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/price_rangs.js"></script>

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