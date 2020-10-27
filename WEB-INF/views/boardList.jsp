<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
	
	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">

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

.notice_search {
	width: 100%;
	text-align: center;
	font-size: 24px;
	padding: 30px 0;
}

.notice_list {
	width: 100%;
	padding: 30px 0;
}

table, tr, th, td {
	border-top: 2px solid rgb(143, 143, 143);
	border-bottom: 2px solid rgb(143, 143, 143);
	border-collapse: collapse;
	text-align: center;
	font-size: 20px;
	padding: 15px;
}

table {
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
	font-size: 20px;
	color: rgb(143, 143, 143);
}

.table_List {
	border-top: 3px solid black;
	color: black;
	font-weight: bold;
}

.table_number {
	width: 10%;
}

.table_type {
	width: 20%;
}

.table_title {
	text-align: left;
	width: 50%;
	font-weight: bold;
}

.table_date {
	width: 20%;
}

.notice_paging {
	width: 100%;
	text-align: center;
	font-size: 20px;
	padding: 30px 0;
}

.keyword {
	width: 400px;
	height: 60px;
}

.type {
	width: 100px;
	height: 40px;
	margin-right: 20px;
}

.search_button {
	width: 100px;
	height: 60px;
}

.noticeWrite_button {
	width: 60px;
	height: 45px;
}

.button_write {
	width: 100%;
	padding-top: 30px;
	padding-left: 81%;
}

/* 링크 색변경 */
a:link {
	color: black;
	text-decoration: none;
}

/* 방문했던 사이트 링크 색변경 */
a:visited {
	color: black;
}

/* 링크에 마우스를 올려줄때 생기는 설정 */
a:hover {
	color: black;
}

/* 링크를 누르는 순간에만 색변경(원래대로 돌아온다.) */
a:active {
	color: black;
	text-decoration: none;
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
								<h1 data-animation="fadeInUp" data-delay=".4s">공지사항</h1>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#">더 알아보기</a></li>
										<li class="breadcrumb-item"><a href="pagingList">공지사항</a></li>
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

			<!-- Section tittle -->
			<div class="row justify-content-center">
				<div class="col-xl-7 col-lg-8 col-md-10">
					<div class="section-tittle mb-60 text-center wow fadeInUp"
						data-wow-duration="1s" data-wow-delay=".2s">
						<h2>공지사항</h2>
					</div>
				</div>
			</div>

			<div class="header-right1 d-flex align-items-center"
				style="margin-left: 65%;">
				<div class="search">
					<ul class="d-flex align-items-center">
						<li>
							<form action="boardSearch" name="boardWriteForm"
								class="form-box f-right">
								<!-- 검색조건 -->
								<select name="type" class="type">
									<option value="NTITLE">제목</option>
									<option value="NWRITER">작성자</option>
								</select>
								<!-- Search Box -->
								<input type="text" name="keyword" placeholder="Search">
								<div class="search-icon">
									<i class="ti-search" onclick="submit()"></i>

									<!-- 검색 기능 script -->
									<script>
										function submit() {
											boardWriteForm.submit();
										}
									</script>
								</div>
							</form>
						</li>
					</ul>
				</div>
			</div>

			<!-- 게시판 목록 및 페이지 리스트 -->
			<div class="notice_list">
				<table>
					<tr class="table_List">
						<td>번호</td>
						<td>구분</td>
						<td>제목</td>
						<td>등록일</td>
					</tr>
					<c:forEach var="board" items="${paginglist }">
						<tr>
							<td class="table_number">${board.nnum }</td>
							<td class="table_type">공지</td>
							<td class="table_title"><a
								href="boardView?nnum=${board.nnum }&page=${paging.page}">${board.ntitle }</a></td>
							<td class="table_date">${board.ndate }</td>
						</tr>

					</c:forEach>
				</table>

				<div class="button_write">
					<!-- 관리자 계정(admin)시에만 글쓰기 버튼이 보이도록 설정 -->
					<c:if test="${sessionScope.loginID == 'admin'}">
						<button onclick="location.href='adminManageNotice'" class="submit-btn3">글쓰기</button>
					</c:if>

				</div>

				<!-- 페이징 처리 -->
				<div class="notice_paging">
					<div class="page">
						<c:forEach begin="${paging.startpage }" end="${paging.endpage }"
							var="i" step="1">
							<c:choose>
								<c:when test="${i eq paging.page }">
									<div
										style="float: left; background: black; width: 50px; height: 50px; padding: 10px; font-weight: bold; border-radius: 50%;">
										<a style="color: white;" href="pagingList?page=${i }">${i }</a>
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
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