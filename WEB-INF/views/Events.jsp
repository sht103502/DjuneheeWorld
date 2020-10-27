<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">

<!-- <link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico"> -->

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/progressbar_barfiller.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lightslider.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/price_rangs.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/gijgo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animated-headline.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">


<title>더알아보기</title>

<style>
.notice_title {
	font-size: 50px;
	font-weight: bold;
	width: 100%;
	text-align: center;
	padding: 30px 0;
	color: black;
}

.pagingList_row {
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
	padding-top: 5%;
	padding-bottom: 5%;
}

table, tr, th, td {
	border-top: 2px solid rgb(143, 143, 143);
	border-bottom: 2px solid rgb(143, 143, 143);
	border-collapse: collapse;
	text-align: center;
	font-size: 20px;
	padding: 25px;
}

table {
	width: 90%;
	margin-left: 5%;
	margin-right: 5%;
	font-size: 20px;
	color: black;
}

.table_top {
	border-top: 2px solid black;
}

.table_type {
	width: 10%;
	text-align: center;
	color: rgb(143, 143, 143);
}

.table_title {
	text-align: left;
	width: 75%;
	font-weight: bold;
}

.table_evnumber {
	text-align: center;
	width: 15%;
	color: rgb(143, 143, 143);
}

.notice_list {
	/* width: 100%; */
	/* 	padding: 30px 0; */
	
}

.button_list {
	width: 200px;
	height: 60px;
	background: black;
	color: white;
	margin-left: 10px;
	margin-right: 10px;
	/* 버튼 위로 올라갈 시 마우스가 포인터 형태로 변경 */
	cursor: pointer;
}

.buttons {
	width: 100%;
	text-align: center;
	padding-top: 20px;
}

.noresize {
	/* 사용자 임의변경 불가 */
	resize: none;
}

.notice_paging {
	width: 100%;
	text-align: center;
	font-size: 20px;
	padding: 30px 0;
}

.page {
	width: 20%;
	padding: 0 49%;
}
</style>

</head>
<body>

	<!-- Header -->
	<%@ include file="Header.jsp"%>

	<!--? slider Area Start-->
	<div class="slider-area ">
		<div class="slider-active">
			<div
				class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-8 col-md-8">
							<div class="hero__caption hero__caption2">
								<h1 data-animation="fadeInUp" data-delay=".4s">이벤트</h1>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#">더 알아보기</a></li>
										<li class="breadcrumb-item"><a href="events">이벤트</a></li>
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

	<!-- 제목 -->
	<div class="pagingList_row">
		<div class="pagingList_col">
			<div class="notice_title">이벤트</div>
			
			<c:forEach var="eventList" items="${eventList}">			
			<!--? Visit Our Tailor Start -->
			<div class="visit-tailor-area fix" style="background-color: white; border-top: 2px solid rgb(143, 143, 143); border-bottom: 2px solid rgb(143, 143, 143); height: 400px;">
				<!-- left Contents -->
				<div class="tailor-offers" style="background-image: URL(${pageContext.request.contextPath}/resources/img/event/${eventList.evbannerfilename}); width: 100%;"></div>
				<!--Right Contents  -->
				<div class="tailor-details">
					<h2 style="font-size: 25px; font-weight: bold;">${eventList.evtitle}</h2>
					<a href="eventsView?evnumber=${eventList.evnumber}" class="btn">자세히보기</a>
				</div>
			</div>
			<br/>
			
			</c:forEach>
		<br /> <br /> <br />
	</div>
	</div>

	<!-- Footer -->
	<%@ include file="Footer.jsp"%>

	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

	<!-- Slick-slider , Owl-Carousel ,slick-nav -->
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

	<!-- One Page, Animated-HeadLin, Date Picker -->
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>

	<!-- Nice-select, sticky,Progress -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>