<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>멤버쉽</title>

  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

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
<!-- 비밀번호 확인 시 필요한 jquery -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>

<!-- 비밀번호 재확인 -->
<script type="text/javascript">
	$(function() {
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input").keyup(function() {
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-success").show();
					$("#alert-danger").hide();

					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled", "disabled");
				}
			}
		});
	});
</script>


<style>
.loginform {
	width: 60%;
	height:700px;
	background: white;
	font-weight: bold;
	font-size: 16px;
	z-index: 1;
	margin-top: -40%;
	margin-left: 20%;
	text-align: center;
	
}

.login-bg {
	z-index: 0;
}

.loginform-left {
	width: 50%;
	height: 700px;
	float: left;
	padding: 50px;
	border-right: 2px solid #FD8F5F;
}

.loginform-right {
	width: 50%;
	height: 700px;
	float: right;
	padding: 50px;
}

.To_Login {
	color: #FD8F5F;
}

.singleinput-fields {
	margin: 15px 15%;
	width: 70%;
	text-align: left;
}

input {
	width: 100%;
	height: 45px;
}

.title_join {
	font-size: 30px;
}

.address {
	text-decoration: underline;
}

.alert {
	width: 350px;
}

.title_address {
	height: 25px;
}

.button_address {
	width: 100px;
	height: 25px;
	float: right;
	margin-bottom: 5px;
	background-color: #FD8F5F;
	border: none;
}

</style>
<!-- 주소 api 사용 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수
						var allAddr = ''; // 주소 + 참고항목 변수
						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						allAddr = addr + extraAddr; // 주소를 한줄로 합치기

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode; //우편번호
						document.getElementById("sample6_address").value = allAddr; // 주소
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</head>

<body class="full-wrapper">

	<main class="login-bg"></main>

	<!-- Register Area Start -->


	<div class="loginform">
		<form action="memberProcess" id="contact_form" class="contact_form"
			method="POST">

			<div class="loginform-left">
				<div class="title">
					<span class="title_join">회원 정보 수정</span>

				</div>
				<div class="singleinput-fields">
					<label>아이디</label><br /> <p>${memberModfiy.mid}</p><input type="hidden"
						 id="idForm" name="mid" value="${memberModfiy.mid}">
				</div>
				<div class="singleinput-fields">
					<label>비밀번호</label><br /> <input type="password"
						placeholder="비밀번호(8~32자리)" class="contact_input" id="pwd1"
						name="mpassword" required="required" >
					<input type="password"
						placeholder="비밀번호 재입력" class="contact_input" id="pwd2"
						name="checkPassword" required="required">
					<div class="alert alert-success" id="alert-success">비밀번호가
						일치합니다.</div>
					<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
						않습니다.</div>
				</div>
				<div class="singleinput-fields">
					<label>이름</label><br /> <p>${memberModfiy.mname}</p><input type="text"
						placeholder="이름을 입력해주세요" id="name" name="mname"
						class="contact_input" required="required" value="${memberModfiy.mname}">
				</div>
				<div class="singleinput-fields">
					<label>전화번호 (-없이 입력하세요)</label><br />
					<p>${memberModfiy.mphone}</p>
					 <input type="text"
						placeholder="전화번호를 입력해주세요" id="phone" name="mphone"
						class="contact_input" required="required" value="${memberModfiy.mphone}">
				</div>
			</div>

			<div class="loginform-right">

				<div class="singleinput-fields">
					<label class="title_address">주소</label>
					<p>${memberModfiy.maddress}</p>
					<input type="button" class="button contact_button" style="width:100px;" onclick="sample6_execDaumPostcode()" value="주소검색" >
					<br /> <input type="text" class="contact_input" id="sample6_postcode" placeholder="우편번호"><br />
					<br /> <input type="text" class="contact_input" id="sample6_address" name="maddress" placeholder="주소"><br />
					<input class="contact_input" id="sample6_detailAddress" name="maddress1" placeholder="상세주소">
				</div>

				<div class="singleinput-fields">
					<label>생일</label><br /> <p>${memberModfiy.mbirth}</p>
					<input type="hidden" id="birth" name="mbirth" class="contact_input" value="${memberModfiy.mbirth}">
				</div>
				<div class="singleinput-fields">
					<label>이메일</label><br />
					<p>${memberModfiy.memail}</p>
					 <input type="text" id="email" name="memail" class="contact_input" value="${memberModfiy.memail }">
				</div>
				<div class="register-footer">
					
					<button class="submit-btn3">회원 정보 수정</button>
				</div>
			</div>
		</form>
	</div>


	<!-- Register Area End -->



	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>





	<!-- JS here -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/ontext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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