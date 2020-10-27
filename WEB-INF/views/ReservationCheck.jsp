<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디준희리조트</title>

<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">
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
<!-- KG이니시스 결제 위한 스크립트 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<h3>예약 조회 및 취소</h3>
<body class="full-wrapper">

	<%@ include file="Header.jsp"%>

	<!-- 예약조회 폼  -->
	<main class="login-bg">		
		<div class="login-form-area">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8">

						<div class="login-form">							
							<div class="login-heading">
							<!-- 예약정보 헤드  -->
								<span>${sessionScope.loginID} 님의 예약정보</span>
							</div>
							<!-- 예약 내역 -->
							<form action="reservationUpdate" name="rvForm"method="GET">
								<div class="input-box">
									<div class="single-input-fields"
										style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
										<!-- 예약자 이름 -->
										<label for="template-contactform-name">예약자 성명</label><br>
										${reservation.rvname}
									</div>
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 예약번호 -->
									<label for="template-contactform-name">예약번호(전화번호)</label> <br>
									${reservation.rvnumber}							
								</div>
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 룸타입 -->
									<label for="template-contactform-name">룸 타입</label><br>
									${reservation.rvroomnumber}
								</div>
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 예약날짜 -->
									<label for="template-contactform-name">예약날짜</label><br>
									${reservation.rvcheckin} ~ ${reservation.rvcheckout}									
								</div>
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 가격 -->
									<label for="template-contactform-name">가격(1 박당)</label><br> 
									${reservation.rvprice}원
								</div>							
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 가격 -->
									<label for="template-contactform-name">총 결제가격</label><br> 
									<div id="priceTotal">원</div>
								</div>		
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9;">
									<!-- 결제 확인 -->
									<label for="template-contactform-name">결제 확인</label><br>
									${reservation.rvpayment}							
								</div>							
									<input type="hidden"value="${reservation.rvname}"name="rvname">
									<input type="hidden"value="${reservation.rvcheckin}"name="rvcheckin">
									<input type="hidden"value="${reservation.rvcheckout}"name="rvcheckout">
									<input type="hidden"value="${reservation.rvnumber}"name="rvphone">																	
								<!-- form Footer -->
								<div class="login-footer">							
									<input type="button" value="결제하기" onclick="buy()"
										class="submit-btn3"> 
								</div>
							  </div>
						   </form>
						</div>
					</div>

				</div>
			</div>
		</div>


	</main>
		<!-- 예약조회폼 끝 -->
	
	<!-- KG이니시스 결제 api  -->
	<script>
		var IMP = window.IMP; // 생략가능
		IMP.init('imp47407695'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	</script>
	
	<script>
function hi(){
	rvForm.submit();
}
	</script>
	<script>
	var startprice = ${reservation.rvcheckin};
	var endprice = ${reservation.rvcheckout};
	var totalprice = (${reservation.rvcheckout}-${reservation.rvcheckin}) * ${reservation.rvprice};
	var rvphone = ${reservation.rvnumber};
		function buy() {
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '${reservation.rvroomnumber}',
				amount : totalprice,
				phone : ${reservation.rvphone},				
				buyer_name : '${reservation.rvname}',
				buyer_tel : '${reservation.rvnumber}',								
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					/* msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num; */
					hi();
					location.href="reservationSelect";
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					location.href="roomDetail"; 
				}
				alert(msg);
			});
		}

		var priceTotal = document.getElementById("priceTotal");
		if(endprice > startprice){//체크아웃이 더 클때 실행 (무조건 실행이다)
			priceTotal.innerHTML = totalprice + "원";
			}
	</script>
	<!-- F5 새로고침 방지 -->						
<script language='javascript'>

function noEvent() {
if (event.keyCode == 116) {
event.keyCode= 2;
return false;
}
else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
{
return false;
}
}
document.onkeydown = noEvent;
</script>
<!-- 오른 마우스 클릭 금지마우스  -->
<body oncontextmenu="return false">

 
</body>
</html>