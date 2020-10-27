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
<!-- KG이니시스 결제 위한 스크립트 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
									<h1 data-animation="fadeInUp" data-delay=".4s">굿즈샵 상세보기</h1>
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="djuneheeLandMain">디준희랜드</a></li>
											<li class="breadcrumb-item"><a href="goodsShop">굿즈샵</a></li>
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
		<!--? Single Product Area Start-->
		<div class="product_image_area section-padding40">
			<div class="container">
				<div class="row s_product_inner">
					<div class="col-lg-5">
						<div class="product_slider_img">
							<div id="vertical">
								<div data-thumb="assets/img/gallery/product-details1.png">
									<img style="width: 50%;"
										src="${pageContext.request.contextPath}/resources/img/goodsShop/${goodsView.gfilename1}" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-5 offset-lg-1">
						<div class="s_product_text">
							<h3>${goodsView.gname}</h3>
							<h2>${goodsView.gprice}원</h2>
							<ul class="list">
								<li><span id="confirmStock"></span></li>
								<li><input type="hidden" id="goodsStock" name="stock"
									value="${goodsView.gstock}"> <input type="hidden"
									id="goodsPrice" value="${goodsView.gprice }"><input type="hidden" value="${goodsView.gcode }" id="gcode"/></li>
							</ul>
							<p>${goodsView.ginformation}</p>
							<div class="card_area">
								<form action="putinBasket" method="GET" name="putinBasket">
									<div class="product_count d-inline-block">
										<span class="inumber-decrement" id="quantity_dec_button">
											<i class="ti-minus"></i>
										</span> <input class="input-number" type="text" value="1" min="0"
											id="quantity_input" name="bquantity" onkeyup="stockCheck()">
										<span class="number-increment" id="quantity_inc_button">
											<i class="ti-plus"></i>
										</span>
									</div>
									<br /> <br /> <input type="hidden"
										value="${sessionScope.loginID }" name="bid" id="loginID"> <input
										type="hidden" value="${goodsView.gcode }" name="bcode">
									<div class="goodsTotal">
										<span id="goodsTotal" style="font-size: 23px; color: black;"></span>
									</div>
									<c:choose>
									<c:when test="${not empty sessionScope.loginID }">
									<div class="add_to_cart">
										<input type="button" class="btn" id="goCart" value="장바구니 담기"
											style="width: 36%; text-align:center; padding:30px;" onclick="soldOutBasket()" />
										<input type="button" class="btn" id="goBuy" value="바로 구매하기"
											style="width: 36%; text-align:center; padding:30px;" onclick="buy()" />
										<input type="button" class="btn" value="목록" 
										style="width: 25%; text-align:center; padding:30px;" onclick="location.href='goodsShop'" />
									</div>
									</c:when>
									<c:otherwise>
									<div class="add_to_cart">
										<input type="button" class="btn" id="noCart" value="로그인 후 이용하기"
											onclick="notBasket()" />
										<input type="button" class="btn" value="목록" 
										style="width: 220px; margin-left: 15px;" onclick="location.href='goodsShop'" />
									</div>
									</c:otherwise>
									</c:choose>
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="categories-area section-padding40 gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <div class="cat-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon/services1.svg" alt="">
                            </div>
                            <div class="cat-cap">
                                <h5>Fast & Free Delivery</h5>
                                <p>Free delivery on all orders</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <div class="cat-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon/services2.svg" alt="">
                            </div>
                            <div class="cat-cap">
                                <h5>Secure Payment</h5>
                                <p>Free delivery on all orders</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                            <div class="cat-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon/services3.svg" alt="">
                            </div>
                            <div class="cat-cap">
                                <h5>Money Back Guarantee</h5>
                                <p>Free delivery on all orders</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                            <div class="cat-icon">
                                <img src="${pageContext.request.contextPath}/resources/img/icon/services4.svg" alt="">
                            </div>
                            <div class="cat-cap">
                                <h5>Online Support</h5>
                                <p>Free delivery on all orders</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</main>

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
	<script
		src="${pageContext.request.contextPath}/resources/js/lightslider.min.js"></script>

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

	<!-- 재고관리 -->
	<script>
		function goGoodsPayment(){
			var gcode=document.getElementById("gcode").value;
			var gquantity=Number(document.getElementById("quantity_input").value);	
			var loginID=document.getElementById("loginID").value;

			location.href="goodsPaymentOne?gcode="+gcode+"gquantity="+gquantity+"loginID="+loginID;
			}
		
	
		function stockCheck() {
			var quantity;
			var confirmStock;
			var goodsStock;
			var goodsPrice;
			var result;
			var goodsTotal;
			quantity = Number(document.getElementById("quantity_input").value);
			confirmStock = document.getElementById("confirmStock");
			goodsStock = Number(document.getElementById("goodsStock").value);
			goodsPrice = Number(document.getElementById("goodsPrice").value);
			goodsTotal = document.getElementById("goodsTotal");

			if (quantity <= goodsStock) {
				console.log("quantity : " + quantity)
				console.log("goodsStock : " + goodsStock)
				result = quantity * goodsPrice;
				console.log("total :" + result);
				confirmStock.style.color = "#0000ff";
				confirmStock.innerHTML = "구매 가능";
				goodsTotal.innerHTML = result + "원";
			} else {
				console.log("quantity : " + quantity)
				console.log("goodsStock : " + goodsStock)
				confirmStock.style.color = "#ff0000";
				confirmStock.innerHTML = "품절";
				goodsTotal.innerHTML = "구매불가";
			}
		}
		//수량 증가 버튼
		var incButton = $('#quantity_inc_button');
		var decButton = $('#quantity_dec_button');
		incButton.on('click', function() {
			quantity = Number(document.getElementById("quantity_input").value);
			confirmStock = document.getElementById("confirmStock");
			goodsStock = Number(document.getElementById("goodsStock").value);
			goodsPrice = Number(document.getElementById("goodsPrice").value);
			goodsTotal = document.getElementById("goodsTotal");

			if (quantity <= goodsStock) {//수량이 재고량과 같거나 작을때
				console.log("quantity : " + quantity)
				console.log("goodsStock : " + goodsStock)
				result = quantity * goodsPrice;
				console.log("total :" + result);
				confirmStock.style.color = "#0000ff";
				confirmStock.innerHTML = "구매 가능";
				goodsTotal.innerHTML = result + "원";
			} else { //재고량보다 많은 수량 선택시
				console.log("quantity : " + quantity)
				console.log("goodsStock : " + goodsStock)
				confirmStock.style.color = "#ff0000";
				confirmStock.innerHTML = "품절";
				goodsTotal.innerHTML = "구매불가";
			}
		});

		//수량 감소 버튼
		decButton.on('click', function() {
			quantity = Number(document.getElementById("quantity_input").value);
			confirmStock = document.getElementById("confirmStock");
			goodsStock = Number(document.getElementById("goodsStock").value);
			goodsPrice = Number(document.getElementById("goodsPrice").value);
			goodsTotal = document.getElementById("goodsTotal");
			if (quantity > 0) { //수량이 0보다 커야함(-로 안내려가게)
				if (quantity <= goodsStock) {//수량이 재고보다 적을때
					console.log("quantity : " + quantity)
					console.log("goodsStock : " + goodsStock)
					result = quantity * goodsPrice;
					console.log("total :" + result);
					confirmStock.style.color = "#0000ff";
					confirmStock.innerHTML = "구매 가능";
					goodsTotal.innerHTML = result + "원";
				} else {
					console.log("quantity : " + quantity)
					console.log("goodsStock : " + goodsStock)
					confirmStock.style.color = "#ff0000";
					goodsTotal.innerHTML = "구매불가";

				}
			} else {
				goodsTotal.innerHTML = "";
			}
		});

		//품절 상품 장바구니담기 불가
		function soldOutBasket() {
			var goCart = document.getElementById("goCart");
			var quantity = Number(document.getElementById("quantity_input").value);
			var goodsStock = Number(document.getElementById("goodsStock").value);
			
			if (quantity > goodsStock) {
				console.log("soldout quantity :"+quantity);
				console.log("soldout goodsStock :"+goodsStock);
				
				alert("구매 불가 상품입니다.");
				return false;
			}else{
				alert("장바구니에 상품이 담겼습니다.");
				document.putinBasket.submit();
				return true;
						
			}

		}

		/* //장바구니 담기 성공 시
		$("#goCart").click(function(){
			alert("장바구니에 상품이 담겼습니다. ")
			}); */

		//비로그인 시 장바구니 담기 못함
		function notBasket(){
			alert('로그인 후 이용해주세요');
			location.href='loginForm';
			}
		
	</script>
	<!-- KG이니시스 결제 api  -->

	<script>
		var IMP = window.IMP; // 생략가능
		IMP.init('imp47407695'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	</script>
	<script>
		function buy() {
			var totalNumber = Number(document.getElementById('quantity_input').value);
			var price= ${goodsView.gprice};
			var result = totalNumber * price ;			
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '${goodsView.gname}',
				amount : result,											
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					location.href="basket"		
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;					
				}
				alert(msg);
			});
		}
	</script>
</body>
</html>