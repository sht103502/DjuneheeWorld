<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>장바구니</title>

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
<body onload="priceSum()">
	<%@ include file="Header.jsp"%>
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
									<h1 data-animation="fadeInUp" data-delay=".4s">장바구니</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider Area End-->
		<!--================Cart Area =================-->





		<section class="cart_area section-padding40">
			<div class="container">
				<div class="cart_inner">
					<div class="table-responsive">
						<table class="table">

							<thead>
								<c:if test='${not empty basketList }'>
									<tr>
										<th></th>
										<th scope="col">상품명</th>
										<th scope="col">가격</th>
										<th scope="col">수량</th>
										<th scope="col">금액</th>

									</tr>
								</c:if>
							</thead>
							<tbody>
							
								<c:if test='${empty basketList }'>
									<h1 style="text-align: center;">장바구니에 담긴 물건이 없습니다.</h1>
								</c:if>

								<!-- 시작 -->
								<c:set var="size" value="${fn:length(basketList)}" />

								<c:forEach var="basket" items="${basketList }"
									varStatus="status">

									<tr>
									<c:choose>
									<c:when test="${basket.bquantity>basket.gstock }">
									<td><input type="checkbox" name="basketDelete"
											class="check" value="${basket.bnumber }" id="check" onclick="soldout()">
											</td>
									</c:when>
									<c:otherwise>
										<td><input type="checkbox" name="basketDelete"
											class="check" value="${basket.bnumber }" id="check" onclick="checkProduct()">
											<input type="hidden" value="${basketCount }" id="count">
											
										</td>
										</c:otherwise>
									</c:choose>	
										<td>
											<div class="media">
												<div class="d-flex">
													<img
														src="${pageContext.request.contextPath}/resources/img/goodsShop/${basket.gfilename1 }"
														alt="상품사진" />
												</div>
												<div class="media-body">
													<a href="goodsView?gcode=${basket.bcode }"
														style="color: black;"> ${basket.gname }</a>

												</div>
											</div>
										</td>
										<c:choose>
											<c:when test='${basket.gstock>=basket.bquantity }'>
												<td>
													<h5>${basket.gprice }</h5> <input type="hidden"
													value="${basket.gprice }" id="price${status.count}">
												</td>
												<td>
													<div class="product_count">
														${basket.bquantity } <input type="hidden"
															value="${basket.bquantity }" id="quantity${status.count}">
													</div>
												</td>
												<td><span id="total${status.count}"></span></td>
											</c:when>
											<c:otherwise>

												<td>
												<h5>-</h5>
												<input type="hidden"
													value="0" id="price${status.count}">
												</td>
												
												<td>
												<h5>품절</h5>
												<input type="hidden"
															value="0" id="quantity${status.count}">
												</td>
												<td><span id="total${status.count}">-</span></td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>

								<c:if test='${not empty basketList }'>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td>
											<h5>총 주문금액</h5>
										</td>
										<td>
											<h5 id="totalB"></h5>
										</td>
									</tr>
								</c:if>
							</tbody>
						</table>
						<div class="checkout_btn_inner float-right">
							<a class="btn" href="goodsShop">굿즈샵으로</a>
							<c:if test='${not empty basketList }'>
								<a class="btn" href="#" onclick="basketDelete()">삭제하기</a>
								<!-- <a class="btn checkout_btn" onclick="buy()">결제하기</a> -->
								<button onclick="buy()" value="" class="btn checkout_btn">결제하기</button>
							</c:if>
							
							<%-- <input type="hidden" id="loginID" value="${sessionScope.loginID }"/> --%>
							<input type="hidden" id="loginID" value="${sessionScope.loginID}"/>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Cart Area =================-->
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
<script>

//장바구니에 담은 물건이 품절됐을 때
	function soldout(){
		 alert("구매할 수 없는 상품입니다. 확인을 누르시면 장바구니에서 삭제됩니다.");
	     basketDelete();
	     alert("삭제가 완료되었습니다.");
	     
	}




//합계 금액 계산
		
	
	
	function priceSum() {
		var price;
		var quantity;
		var sum;
		var total;
		var totalResult=document.getElementById("totalB");
		
		for(var i = 1; i<=${basketCount }; i++){
		
		price = Number(document.getElementById("price"+i).value);
		quantity = Number(document.getElementById("quantity"+i).value);
		total = document.getElementById("total"+i);

		console.log("price : " + price);
		console.log("quantity : " + quantity);
			sum = price * quantity;
			console.log("sum: " + sum);
			
			if(sum>0){
				total.innerHTML = sum + "원";
			}
			totalResult.innerHTML = 0 + "원";
		}
	
	}

	 //버튼 클릭시 장바구니 삭제
	function basketDelete(){
	   	var basketArray = new Array();
	   	var checkArrayValue;
	   	var ID =document.getElementById("loginID").value;
		var checkArray = document.getElementsByName("basketDelete");
		

		for(var i=0; i<checkArray.length;i++) {
			if(checkArray[i].checked == true) {
				checkArrayValue = checkArray[i].value;
				basketArray.push(checkArrayValue);
			} 
			
		}
		alert('성공');
		location.href="basketDelete?bnumber=" + basketArray + "&&loginID="+ID;
		
	} 


	//버튼 클릭시 장바구니 총 금액 변경
	function checkProduct(){
		var pricea;
		var quantitya;
		var suma;	
		var totalResulta=document.getElementById("totalB");
		
	   	var basketArraya = new Array();
	   	var checkArrayValuea;
		var hhh=0;
		var checkArraya= document.getElementsByName("basketDelete");

		for(var i=0; i<checkArraya.length;i++) {
			if(checkArraya[i].checked == true) {
				pricea = Number(document.getElementById("price"+(i+1)).value);
				quantitya = Number(document.getElementById("quantity"+(i+1)).value);		
				checkArrayValuea = checkArraya[i].value;
				basketArraya.push(checkArrayValuea);
				suma = pricea * quantitya;
				hhh+=suma;
				console.log("hhh: " + hhh);
			} 
		}
		totalResulta.innerHTML = hhh + "원";
		
	} 

	 
</script>
<!-- 신희태 추가 -->
<!-- KG이니시스 결제 api  -->
	<script>
		var IMP = window.IMP; // 생략가능
		IMP.init('imp47407695'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	</script>
<script>
		function buy() {
			var startprice = ${reservation.rvcheckin};
			var endprice = ${reservation.rvcheckout};
			var totalprice = (${reservation.rvcheckout}-${reservation.rvcheckin}) * ${reservation.rvprice};
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
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
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

	</script>



</html>