<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>디준희랜드</title>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">

<!-- ajax 사용을 위한 jquery -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>

<!-- 이미지 hover부분 css -->
<style>
.box {
	position: relative;
	background: #000000;
	width: 400px;
	height: 300px;
	cursor: pointer;
	overflow: hidden;
}

.box img {
	width: 100%;
	transition: all 0.3s ease-in-out;
}

.box .ainfo {
	position: absolute;
	left: 0;
	bottom: 10px;
	color: #ffffff;
	width: 100%;
	padding: 15px;
	box-sizing: border-box;
	opacity: 0;
	transition: all 0.3s ease-in-out;
}

.box .ainfo p {
	/* 설명 부분 글씨랑 위치 조절  */
	font-size: 16px;
	line-height: 20px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.box:hover .ainfo {
	opacity: 1;
}

.box:hover img {
	opacity: 0.2;
}
</style>

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

</head>
<body class="full-wrapper">

	<header>
		<%@ include file="Header.jsp"%>
	</header>

	<main>
		<!--? slider Area Start-->
		<div class="slider-area ">
			<div class="slider-active">
				<div
					class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
					<div class="container">
						<div class="row">
							<div class="col-xl-6 col-lg-8 col-md-8">
								<div class="hero__caption hero__caption2">
									<h1 data-animation="fadeInUp" data-delay=".4s">어트랙션</h1>
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="djuneheeLandMain">디준희
													랜드</a></li>
											<li class="breadcrumb-item"><a href="attraction">어트랙션</a></li>
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
		<!-- listing Area Start -->
		<div class="category-area">
			<div class="container" style="max-width: 1730px;">
				<div class="row">
					<div class="col-xl-7 col-lg-8 col-md-10">
						<div class="section-tittle mb-50" style="align-items: left;">
							<h2>어트랙션</h2>
						</div>

					</div>



				</div>
				<div class="row">
					<!--? Left content -->
					<div class="col-xl-3 col-lg-3 col-md-4 ">
						<div class="row">
							<div class="col-12"></div>
						</div>
						<!-- Job Category Listing start -->
						<div class="category-listing mb-50">



							<!-- 범위 bar -->

							<div class="header-right1 d-flex align-items-center"
								style="margin-bottom: 50px;">
								<div class="search">
									<ul class="d-flex align-items-center">
										<li>
											<!-- Search Box -->
											<form action="attractionSearch" class="form-box f-right "
												id="searchForm">
												<input type="text" name="attractionName"
													placeholder="어트랙션을 검색하세요">
												<div class="search-icon">
													<button onclick="submit()"
														style="width: 35px; height: 35px;">
														<img
															src="${pageContext.request.contextPath}/resources/img/others/searchIcon.png"
															style="width: 22px; height: 22px;">
													</button>
												</div>
											</form>
										</li>
									</ul>
								</div>
							</div>



							<div class="small-tittle small-tittle2">
								<h4>키에 맞는 어트랙션 찾기</h4>
								: <span id="element"> 0 cm</span>
							</div>
							<br />


							<div class="range_item">
								<form action="searchAttraction">
									<input type="range" id="grade" min="80" max="150" value="0"
										step="1" onchange="test()" name="aheight"
										style="width: 250px;">
									<button
										style="background-color: #fd7e14; border-radius: 2px; border: #fd7e14 1px solid; color: #ffffff;"
										onclick="submit()">search</button>

								</form>
							</div>
							<br /> <br /> <br />

							<div class="small-tittle small-tittle2">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/img/others/attractionNotice.png"
									alt=""></a>
							</div>
							<!--  범위 bar end -->
						</div>
						<!-- Job Category Listing End -->
					</div>

					<!--?  Right content -->
					<div class="col-xl-9 col-lg-9 col-md-8 ">
						<!--? New Arrival Start -->
						<div class="new-arrival new-arrival3">
							<div class="row">


								<!-- 어트랙션 목록 -->
								<c:forEach var="attraction" items="${attraction}">
									<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">

										<div class="single-new-arrival mb-50 text-center">

											<div class="box">
												<div class="popular-img">
													<img
														src="${pageContext.request.contextPath}/resources/img/attraction/${attraction.afilename}"
														alt="어트랙션사진들" style="width: 400px; height: 300px;">

												</div>
												<h2>${attraction.aname}</h2>
												<div class="ainfo">
													<p style="text-align: left; color: #ffffff;">${attraction.ainformation}</p>
												</div>
											</div>
											<p style="font-weight: bold; font-size: 20px;">${attraction.aname}</p>
											<div>
												<!-- href="upAlike?aname=${attraction.aname} -->
                                             		<c:choose>
                                             			<c:when test="${sessionScope.loginID!=null}">                 			
                                             				<button onclick="upAlike('${attraction.aname}')" class="genric-btn danger circle">
															${attraction.alike} &nbsp; <i class="ti-heart"></i> <span class="lnr lnr-arrow-right"></span></button>                                             			
                                             			</c:when>
                                             			<c:otherwise> 			
															<button onclick="needLogin()" class="genric-btn danger circle">
															${attraction.alike} &nbsp; <i class="ti-heart"></i> <span class="lnr lnr-arrow-right"></span></button>
                                             			</c:otherwise>
                                             		</c:choose>
                                             		
                                             		<script>
														function needLogin() {
															alert('로그인이 필요한 기능입니다. 로그인 창으로 이동합니다.');
															location.href='loginForm';
															}
                                             		</script>
												
											</div>
										</div>
									</div>

								</c:forEach>
							</div>
							<!--? New Arrival End -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- listing-area Area End -->

	</main>

	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>

	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
	<script>
		function submit() {
			searchAttraction.submit;
		}
	</script>
	<!-- JS here -->
	<!-- 어트랙션 좋아요 ajax 기능 구현 -->
	<script>
		function upAlike(aname) {

			//alert('upAlike 함수 실행');

			$.ajax({
				type : "post",
				url : "upAlike",

				data : {
					"aname" : aname
				},
				
				dataType : "json",
				
				success : function(result) {
					location.reload();
				},
				
				error : function() {
					location.reload();
				}
			});
		}
	</script>

	<!-- Jquery, Popper, Bootstrap -->

	<script>
		var elem = document.getElementById("element");
		var height = document.getElementById("grade").value;
		function test() {
			var elem = document.getElementById("element");
			var ht = document.getElementById("grade").value;
			elem.innerHTML = ht + " cm";
		}
	</script>

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
	<script
		src="${pageContext.request.contextPath}/resources/js/lightslider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/price_rangs.js"></script>

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
	<script>
		function searchSubmit() {
			searchForm.submit();
		}
	</script>


</body>
</html>