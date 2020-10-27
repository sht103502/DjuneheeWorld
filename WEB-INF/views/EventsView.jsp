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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
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
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
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
	width: 100%;
	padding: 30px 0;
}

.button_modify {
	width: 200px;
	height: 60px;
	background: black;
	color: white;
	margin-left: 10px;
	margin-right: 10px;
	cursor: pointer;
}

.button_delete {
	width: 200px;
	height: 60px;
	background: black;
	color: white;
	margin-left: 10px;
	margin-right: 10px;
	cursor: pointer;
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

.commentLine {
	float: left;
	width: 72%;
	margin: 0 14%;
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

			<div class="notice_list">
				<table>
					<tr>
						<td class="table_type">이벤트</td>
						<td class="table_title">${event.evtitle}</td>
						<td class="table_evnumber">글번호 : ${event.evnumber}</td>
					</tr>
					<tr>
						<!-- <th class="table_title">첨부파일</th> -->
						<td colspan="3" class="table_contents"><img
							style="width: 1000px; height: 1000px;"
							src="${pageContext.request.contextPath}/resources/img/event/${event.evfilename}" />
						</td>
					</tr>
				</table>

				<!-- 댓글 section  -->
				<br />
				<!-- 댓글 상자 부분 -->
				<div class="comment_Area" style="width: 72%; margin: 0 14%;">
					<h3 style="font-weight: bold;">댓글</h3>
					<div>
						<!-- 작성자 부분 -->
						<input type="hidden" id="cwriter" value="${sessionScope.loginID}"><br />
						<!-- 댓글 박스 부분 -->
						<textarea class="noresize" id="ccontents" cols="135" rows="5"
							wrap="hard" placeholder=" 이름 / 전화번호 / 생일 (ex)홍길동/01058371234/931113)의 형식으로 입력하세요."></textarea>
						<!-- 댓글 버튼 부분 -->
						<c:choose>
							<c:when test="${!empty sessionScope.loginID}">
								<button id="commentWriteBtn" class="submit-btn3">댓글 입력</button>
							</c:when>
							<c:otherwise>
								<button id="commentWrite" class="submit-btn3"
									onclick="needSessionLogin()">댓글 입력</button>
							</c:otherwise>
						</c:choose>

						<script>
							function needSessionLogin(){
								alert('로그인이 필요합니다.');
								location.href='loginForm';
								}
						</script>

					</div>

					<!-- 댓글 -->
					<div id="commentArea"></div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />

	<!-- Footer -->
	<%@ include file="Footer.jsp"%>

	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->
	<script>
	// 댓글 목록
	// result = commentList
	// result 값은 결국 return 받은 값
	// 페이지가 로딩될 때 실행
	 	function commentList(result){
			var CWRITER = $("#cwriter").val();
			console.log("위에서 받아온 loginId(Session) : " + CWRITER);

			var output = "";
			output += "<br/>";		
			
			for(var i in result){
				output += "<div>";
				output += "<div>";
				output += "<div style='float: left; font-weight: bold;'>" + result[i].cwriter + "</div>";
				output += "<div style='float: right;'>"+ result[i].cdate + "</div>";
				output += "</div>";
				output += "<br/>";				
				output += "<div>";
				output += "<div style='float: left;'>" + result[i].ccontents + "</div>";
				output += "</div>";				
				output += "<br/>";

				/* 삭제 버튼 부분 */				
				/* console.log("세트"+ i + " CWRITER : " + CWRITER + ", result[i].cwriter : " + result[i].cwriter); */
				if(CWRITER  == 'admin'){				
					output += "<div style='float: right;'>";
					output += "<button onclick='commentDelete(" + result[i].cnum + ")' style='color:black; cursor: pointer; float: right; background:white; border:0;'>" + "삭제" + "</button>";
					output += "</div>";		
				} else if(CWRITER  == result[i].cwriter){
					output += "<div style='float: right;'>";
					output += "<button onclick='commentDelete(" + result[i].cnum + ")' style='color:black; cursor: pointer; float: right; background:white; border:0;'>" + "삭제" + "</button>";
					output += "</div>";		
				} else{
					output +="";
				}
				output += "</div>";
				output += "<br/>";
				output += "<hr/>";
			}			
			$("#commentArea").html(output);
		}

	 // 페이지 로딩시 댓글 목록 조회
		$(document).ready(function(){
			var cbnum = ${event.evnumber};
			$.ajax({
				type : "POST",
				url : "comment/commentList",
				data : {"cbnum" : cbnum },
				dataType : "json",
				success : function(result){
					commentList(result);
					},
				error: function() {
					alert("댓글 조회 실패");
					}
				});
			});

		/* $(document).ready(function(){
		// 페이지가 로딩될 때 실행
		commentList(result);
		}); */ 

		// 댓글 입력
	$(document).ready(function(){
		$("#commentWriteBtn").click(function(){
			var cwriter = $("#cwriter").val();
			var ccontents = $("#ccontents").val();
			var cbnum = ${event.evnumber};

			if(ccontents != ""){
			$.ajax({
				type : "post",
				url : "comment/commentwrite",
				data : {
					"cwriter" : cwriter,
					"ccontents" : ccontents,
					"cbnum" : cbnum
					},
				dataType : "json",
				success : function(result){
					commentList(result);

					/* 댓글 상자 안 기본값을 설정함 */
					$("#ccontents").val("");
				},
				error : function() {
					alert("댓글 입력 실패");
				}
				});
				}
			});
		});	
 	
		// 댓글 삭제
	function commentDelete(cnum){
		$.ajax({
			type : "GET",
			url : "comment/commentdelete",
			data : {
					"cnum" : cnum,
					"cbnum" : ${event.evnumber}
				},
			dataType : "json",
			success : function(result){
				commentList(result);
				},
			error : function(){
				alert("댓글 입력 실패");
				}
			});
	}
	</script>

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