<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<!-- KG이니시스 결제 위한 스크립트 -->

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/progressbar_barfiller.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gijgo.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animated-headline.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<style>
	.genric-btn1 {
	display: inline-block;
	outline: none;
	line-height: 40px;
	padding: 0 30px;
	font-size: .8em;
	text-align: center;
	text-decoration: none;
	font-weight: 500;
	cursor: pointer;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s
}

.genric-btn1:focus {
	outline: none
}

.genric-btn1.e-large {
	padding: 0 40px;
	line-height: 50px
}

.genric-btn1.large {
	line-height: 45px
}

.genric-btn1.medium {
	line-height: 30px
}

.genric-btn1.small {
	line-height: 25px
}

.genric-btn1.radius {
	border-radius: 3px
}

.genric-btn1.circle {
	border-radius: 20px
}

.genric-btn1.arrow {
	display: -webkit-inline-box;
	display: -ms-inline-flexbox;
	display: inline-flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.genric-btn1.arrow span {
	margin-left: 10px
}

.genric-btn1.default {
	color: #415094;
	background: #f9f9ff;
	border: 1px solid transparent
}


.genric-btn1.default-border {
	border: 1px solid #f9f9ff;
	background: #fff
}


.genric-btn1.primary {
	color: #fff;
	background: #1f2b7b;
	border: 1px solid transparent
}


.genric-btn1.primary-border {
	color: #1f2b7b;
	border: 1px solid #1f2b7b;
	background: #fff
}


.genric-btn1.success {
	color: #fff;
	background: #4cd3e3;
	border: 1px solid transparent
}

.genric-btn1.success-border {
	color: #4cd3e3;
	border: 1px solid #4cd3e3;
	background: #fff
}



.genric-btn1.info {
	color: #fff;
	background: #38a4ff;
	border: 1px solid transparent
}

.genric-btn1.info-border {
	color: #38a4ff;
	border: 1px solid #38a4ff;
	background: #fff
}


.genric-btn1.warning {
	color: #fff;
	background: #f4e700;
	border: 1px solid transparent
}


.genric-btn1.warning-border {
	color: #f4e700;
	border: 1px solid #f4e700;
	background: #fff
}


.genric-btn1.danger {
	color: #fff;
	background: #f44a40;
	border: 1px solid transparent
}


.genric-btn1.danger-border {
	color: #f44a40;
	border: 1px solid #f44a40;
	background: #fff
}

.genric-btn1.link {
	color: #415094;
	background: #f9f9ff;
	text-decoration: underline;
	border: 1px solid transparent
}

.genric-btn1.link-border {
	color: #415094;
	border: 1px solid #f9f9ff;
	background: #fff;
	text-decoration: underline
}

.genric-btn1.disable {
	color: #222, 0.3;
	background: #f9f9ff;
	border: 1px solid transparent;
	cursor: not-allowed
}

	</style>
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
									<h1 data-animation="fadeInUp" data-delay=".4s">랜드이용권</h1>
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#">멤버쉽</a></li>
											<li class="breadcrumb-item"><a href="reservationLand">랜드이용권</a></li>
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
		<!--? Start Sample Area -->
		<section class="sample-text-area">
			<div class="container box_1170">
				<h3 class="text-heading">디준희랜드 이용권</h3>
				<div class="sample-text">
					디준희랜드의 다양한 혜택과 이벤트를 이용권 구매를 통해 이용해보세요 !<br /><br/>
					이용 요금은 <a style="color: red;" href="djuneheeLandUse4"><u>"디준희랜드 이용방법-이용요금"</u></a>을 통해 확인하시고,<br /><br/> 
					<strong style="color:red;">아래 이용권을 선택하여 결제 해주시길 바랍니다.<br/><br/>
					(선택 시 바로 결제창으로 넘어갑니다.)</strong>
				</div>
			</div>
		</section>
		<!-- End Sample Area -->
		<!--? Start Button -->
		<section class="button-area">
			<div class="container box_1170 border-top-generic">
				<h3 class="text-heading">기본, 연간 이용권</h3>
				<input type="hidden" id="loginId" value="${sessionScope.loginID}"><br />
				<div class="button-group-area">
					<a   class="genric-btn1 default" >기본이용권</a> 
					<a   class="genric-btn1 info" style="color:white;">주말/대인</a> 
					<a   class="genric-btn1 warning" style="color:white;">주말/청소년</a> 
					<a   class="genric-btn1 danger" style="color:white;">주말/소인, 경로</a>
					<br/><br/>
				</div>
				<div class="button-group-area">
					<a   class="genric-btn1 default" >기본이용권</a> 
					<a   class="genric-btn1 info" style="color:white;">야간/대인</a> 
					<a   class="genric-btn1 warning" style="color:white;">야간/청소년</a> 
					<a   class="genric-btn1 danger" style="color:white;">야간/소인, 경로</a>
				</div>
				<div class="button-group-area mt-40">
					<a href="#" type="radio" class="genric-btn default circle">연간이용권</a> 
					<a href="#" type="radio" class="genric-btn primary circle" onclick="buy7()">대인/청소년-신규</a> 
					<a href="#" type="radio" class="genric-btn success circle" onclick="buy8()">소인-신규</a> 
					<a href="#" type="radio" class="genric-btn info circle" onclick="buy9()">대인/청소년-재가입</a> 
					<a href="#" type="radio" class="genric-btn warning circle" onclick="buy10()">소인-재가입</a>
				</div>
			</div>
		</section>
		<!-- End Button -->
		<!--? Start Align Area -->
		<div class="whole-wrap">
			<div class="container box_1170">
				<div class="section-top-border">
					<h3 class="mb-30">DjuneheeLand "기본"이용권이란?</h3>
					<div class="row">
						<div class="col-md-3">
							<img src="${pageContext.request.contextPath}/resources/img/reservationLand1.jpg" alt="" class="img-fluid">
						</div>
						<div class="col-md-9 mt-sm-20">
							<p><strong style="color:red;">기본 이용권은 회원이 아니더라도 구매 가능합니다.(현장 구매만 가능)</strong><br/>
								구매한 날짜에 디준희랜드에서 사용이 가능하며, 1일권으로 지정된 구매날짜가 지나게 되면 사용이 불가하게 됩니다.<br />
								해당 날짜가 아닌 다른 날짜로 다시 구매하게 되는 상황이라면 반드시 구매했던 티켓은 취소 해주시고(현장에서도 가능)<br />
								다시 원하는 날짜로 재 구매하여 사용해주시길 바랍니다. DjuneheeLand에서 즐거운 하루 보내시길
								바랍니다*^^*
							</p>
						</div>
					</div>
				</div>
				<div class="section-top-border text-right">
					<h3 class="mb-30">DjuneheeLand "연간"이용권이란?</h3>
					<div class="row">
						<div class="col-md-9">
							<p class="text-right">
							<strong style="color:red;">연간 이용권은 회원 시 구매가 가능합니다.</strong><br/>
								구매한 날짜로 부터 1년간 사용이 가능하며, 1년이 지나게 되면 재가입 티켓을 구매해야 연간회원이 지속됩니다.<br />
								연간회원은 디준희랜드에서 이루어지는 모든 이벤트 혜택 대상이며, 혜택 받기 위해서는 현장에서 연간회원권을 <br />
								보여주셔야 혜택을 받으실 수 있습니다. 또 연간회원권을 구매하였는데 취소를 할려면 구매일로 부터 7일 이내에<br />
								온라인에서 반드시 결제 취소를 하셔야 합니다.(사용하고 결제 취소하면 취소가 안됨.) 이 점 유의하시어<br />
								디준희랜드 에서 이루어지는 다양한 혜택을 받으시길 바랍니다.<br /> 
								DjuneheeLand에서 즐거운 연간 보내시길 바랍니다*^^*
							</p>
						</div>
						<div class="col-md-3">
							<img src="${pageContext.request.contextPath}/resources/img/reservationLand2.png" alt="" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="section-top-border">
					<h3 class="mb-30">디준희랜드 둘러보기</h3>
					<div class="row">
						<div class="col-md-4">
							<div class="single-defination">
								<h4 class="mb-20">01. 다양한 어트렉션</h4>
								<p>
									어린이 부터 어른까지 각 연령별로<br /> 
									다양한 어트렉션이 준비되어 있습니다.<br />
									<br /> 
									<a style="color: red;" href="attraction">[어트렉션 둘러보기]</a>
								</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="single-defination">
								<h4 class="mb-20">02. 시선강탈 엔터테이먼트</h4>
								<p>
									퍼레이드, 사파리, 아쿠아리움까지 !<br /> 
									어디에서도 볼 수 없는 파티가<br /> 
									디준희랜드에서 이루어집니다.<br />
									<br /> 
									<a style="color: red;" href="entertainment">[엔터테이먼트 둘러보기]</a>
								</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="single-defination">
								<h4 class="mb-20">03. 귀여운캐릭터 가득 굿즈샵</h4>
								<p>
									디준희랜드의 캐릭터와 어디서도 구매할 수 없는<br /> 
									다양한 캐릭터들과 용품들을 구매해보세요.<br />
									<br /> 
									<a style="color: red;" href="goodsShop">[굿즈샵 둘러보기]</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Align Area -->
	</main>

	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>

	<!-- Scroll Up -->
	<div id="back-top">
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


	<!-- KG이니시스 결제 api  -->

	<script>
		var IMP = window.IMP; // 생략가능
		IMP.init('imp47407695'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	</script>

	<script>
		function buy1() {
		alert("현장에서 예매 해주세요.");
		}

		function buy2() {
			alert("현장에서 예매 해주세요.");
		}

		function buy3() {
			alert("현장에서 예매 해주세요.");
		}

		function buy4() {
			alert("현장에서 예매 해주세요.");
		}

		function buy5() {
			alert("현장에서 예매 해주세요.");
		}

		function buy6() {
			alert("현장에서 예매 해주세요.");
		}

/************************************************************************************/
		var name7 = "대인/청소년-신규";
        var myDate = new Date();
        var yy = myDate.getFullYear();
        var mm = myDate.getMonth()+1;
        var dd = myDate.getDate();
        var today = yy+'-'+mm+'-'+dd;
		
		function buy7() {
			var loginId = $("#loginId").val();
			console.log("loginId : " + loginId);
			
			if(loginId == ""){
				alert('로그인 후 이용해주세요.');
				location.href="loginForm";
			} else{
				IMP.request_pay({
					pg : 'inicis', // version 1.1.0부터 지원.
					pay_method : 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : name7,
					amount : 100,
				}, function(rsp) {
					if (rsp.success) {
						var msg = '결제가 완료되었습니다.';
						msg += '내정보에서 확인하십시오.';
						ticketUpdate();
						
					} else {
						var msg = '결제에 실패하였습니다.';
						msg += '에러내용 : ' + rsp.error_msg;
						/* m_redirect_url :''; */
					}
					alert(msg);
				
				});
			}
		}

		function ticketUpdate(){
			var loginId = $("#loginId").val();
				$.ajax({
					type : "POST",
					url : "ticketUpdate",
					dataType : "json",
					data : {
						"today" : today,
						"name7" : name7,
						"loginId" : loginId
					},
					success : function() {
						location.href = "mypage";
					}
				});
		}
/************************************************************************************/
		function buy8() {

			var loginId = "${sessionScope}";
			console.log("loginId : " + loginId);
			
			if(loginId == "{}"){
				alert('로그인 후 이용해주세요.');
				location.href="loginForm";
			} else{
			
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '소인-신규',
				amount : 180000,
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '이용권 명 : ' + rsp.name;
					msg += '결제 금액 : ' + rsp.amount;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					/* m_redirect_url :''; */
				}
				alert(msg);
			});
		}

	}		

		function buy9() {

			var loginId = "${sessionScope}";
			console.log("loginId : " + loginId);
			
			if(loginId == "{}"){
				alert('로그인 후 이용해주세요.');
				location.href="loginForm";
			} else{
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '대인/청소년-재가입',
				amount : 170000,
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '이용권 명 : ' + rsp.name;
					msg += '결제 금액 : ' + rsp.amount;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					/* m_redirect_url :''; */
				}
				alert(msg);
			});
		}
	}
		function buy10() {

			var loginId = "${sessionScope}";
			console.log("loginId : " + loginId);
			
			if(loginId == "{}"){
				alert('로그인 후 이용해주세요.');
				location.href="loginForm";
			} else{
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '소인-재가입',
				amount : 130000,
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '이용권 명 : ' + rsp.name;
					msg += '결제 금액 : ' + rsp.amount;
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					/* m_redirect_url :''; */
				}
				alert(msg);
			});
		}
	}		
	</script>


</body>
</html>