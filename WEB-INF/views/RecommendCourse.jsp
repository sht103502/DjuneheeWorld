<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디준희랜드</title>

  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">

<!-- CSS here -->
    <link rel="stylesheet" href="resources/css/bootstrap.min2.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/slicknav.css">
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="resources/css/lightslider.min.css">
    <link rel="stylesheet" href="resources/css/price_rangs.css">
    <link rel="stylesheet" href="resources/css/gijgo.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/animated-headline.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <link rel="stylesheet" href="resources/css/slick.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<style>
/* 완전 최소값 */
@media(min-width:270px){
.middle{
	margin-top:180px;
	width:100%;
	height:550px;
	text-align:center;
	background-color:beige; 
}
.middle img {
width:200px;
height:200px;
margin-top:30px;
}
.middle h1{
font-size:20px;
}
.mini{
height:275px;
background-color:#F2E1D9;
}
}
/* 핸드폰 세로모드 */
@media(min-width: 576px){
.middle{
	margin-top:180px;
	width:100%;
	height:550px;
	text-align:center;
	background-color:beige; 
}
.middle img {
width:200px;
height:200px;
margin-top:30px;
}
.middle h1{
font-size:20px;
}
.mini{
height:275px;
background-color:#F2E1D9;
}


}

/* 태블릿 가로모드 */
@media (min-width: 992px){
	.middle{
	margin-top:180px;
	width:100%;
	height:600px;
	background-color:#F2E1D9;
	text-align:center;
	}
	.middle img{
	width:230px;
	height:230px;
	margin-top:20px;
	}
	.middle h1{
	font-size:30px;
	}
	.mini{
	height:300px;
	background-color:beige;
	}

}
/* 데스크 탑 모드 */
@media (min-width:1200px){

.middle{
margin-top:180px;
width:100%;
height:600px;
background-color:beige;
}

.box1 {
float:left;
padding-left:50%;
padding-right:50%;
}
.box2{
float:right;
padding-left:50%;
padding-right:50%;
}
.mini{
background-color:#F2E1D9;
}
}

/* 마우스 호버시 */
.box1 img:hover {
cursor:pointer;
}
.box2 img:hover {
cursor:pointer;
}
.top{
text-align:center;
}
.titleRecommend{
height:5px;
}
/* 제목 */
.titleRecommend h1 {
font-size:30px; 
font-weight:bold; 
text-align:center;
margin-top:100px; 
margin-boottom:0;
font-family:sans-serif; 
}
/* 내용 */
.titleComment{

text-align:center;
}
</style>
<body>

    <header>
       <%@ include file = "Header.jsp" %>
    </header>
 <!-- 메인 시작 -->
 <main>
         <!--? slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >추천코스</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="djuneheeLandMain">디준희랜드</a></li>
                                            <li class="breadcrumb-item"><a href="recommendCourse">추천코스</a></li> 
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
 	<!-- 섹션 시작 -->
 	<div class="titleRecommend">
 		<h1>펭수와 루피가 함께하는 추천 코스</h1>
 		<div class="titleComment">ChatBot을 이용한 추천코스를 알아볼 수 있어요~! </div>
 	</div>
	<div class="middle">
		<div class="mini">
		<!--펭수 사진 -->
			<div class="box1">
				<img src="resources/img/hero/Pengsu.jpg"  onclick="Pengsu()">
				<h1>펭수와 톡하기</h1>
			</div>
		<!-- 루피 사진 -->
			<div class="box2">
				<img src="resources/img/hero/Lufy.jpg" onclick="Lufy()">
				<h1>루피와 톡하기</h1>
			</div>
		</div>
	</div>
 	<!-- 섹션 끝 -->
 </main>
 <!-- 메인 끝 -->
 <br><br><br><br>
<footer>
       <%@ include file = "Footer.jsp" %>
</footer>

<!-- 펭수봇 -->
<script SameSite="None; Secure" src="https://static.landbot.io/landbot-3/landbot-3.0.0.js"></script>
<script>
  var myLandbot = new Landbot.Popup({
    configUrl: 'https://chats.landbot.io/v3/H-734929-SOAZY84KDYVJ1HWD/index.json',
  });

</script>
<!-- 루피봇 -->
<script SameSite="None; Secure" src="https://static.landbot.io/landbot-3/landbot-3.0.0.js"></script>
<script>
function Lufy(){
var myLandbot = new Landbot.Popup({
    configUrl: 'https://chats.landbot.io/v3/H-722438-JK8XEYR5IF0ATM3X/index.json',
  });
}
</script>

<!-- JS here -->
<!-- Jquery, Popper, Bootstrap -->
<script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<!-- Slick-slider , Owl-Carousel ,slick-nav -->
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/jquery.slicknav.min.js"></script>

<!-- One Page, Animated-HeadLin, Date Picker , price, light-slider -->
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/animated.headline.js"></script>
<script src="resources/js/jquery.magnific-popup.js"></script>
<script src="resources/js/gijgo.min.js"></script>
<script src="resources/js/lightslider.min.js"></script>
<script src="resources/js/price_rangs.js"></script>

<!-- Nice-select, sticky,Progress -->
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/jquery.sticky.js"></script>
<script src="resources/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="resources/js/jquery.counterup.min.js"></script>
<script src="resources/js/waypoints.min.js"></script>
<script src="resources/js/jquery.countdown.min.js"></script>
<script src="resources/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="resources/js/plugins.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>