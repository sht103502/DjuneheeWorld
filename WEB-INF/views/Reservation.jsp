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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/date-fns/1.29.0/date_fns.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

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
<!-- 달력 스크립트 위한 js -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- KG이니시스 결제 위한 스크립트 -->
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>

	<%@ include file="Header.jsp"%>
	<!-- 로그인 폼  -->
	<main class="login-bg">
		<!-- login Area Start -->
		<div class="login-form-area">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8">

						<div class="login-form">
							<!-- Login Heading -->
							<div class="login-heading">
								<span>예약하기</span>

							</div>
							<form action="reservation1" method="GET">
								<!-- Single Input Fields -->
								<div class="input-box">
									<input type="hidden" name="rvmid"
										value="${sessionScope.loginID}">

									<div class="single-input-fields">
										<label for="rvname">이름</label> <input type="text"
											name="rvname" placeholder="예약자 이름을 입력하세요"id="name">
									</div>
									<div class="single-input-fields">
										<label for="rvphone">전화번호</label> <input type="text"
											name="rvphone" placeholder="전화번호를 입력하세요"id="phone">
									</div>
									<div class="single-input-fields">
										<label for="rvemail">이메일 </label> <input type="email"
											name="rvemail" placeholder="이메일을 입력하세요"id="email">
									</div>
									<div class="single-input-fields">
										<label for="#">날짜 </label> 
										<input type="text"	id="startDatepicker" name="rvcheckin"> 
										<input type="text" id="lastDatepicker" name="rvcheckout">
									</div>
									
									
									<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 룸타입 -->
										<label for="#">룸타입 </label> ${sessionScope.roomView.rtype}									
								</div>
								<div class="single-input-fields"
									style="border-bottom: solid 1px #C9C9C9; margin-bottom: 10px;">
									<!-- 가격 -->
										<label for="#">가격(1 박당) </label> ${sessionScope.roomView.rprice}원									
								</div>																						
									<div class="login-footer" style="float: right;">
									<input type="hidden" name="rvroomnumber" value="${sessionScope.roomView.rtype}"> 
									<input type="hidden" name="rvprice" value="${sessionScope.roomView.rprice}">

										<input class="btn btn-dark" type="submit" value="예약하기"id="input">
									</div>
									
								</div>
							</form>
						</div>
						<!-- form Footer -->
					</div>
				</div>
			</div>
		</div>

	</main>
	<!--달력 -->


	<!-- #content end -->
	<script>
  $("#input").click(function(){
    if($.trim($("#name").val())==''){
      alert("이름을 입력해주세요.");
      return false;
    } 
    if($.trim($("#phone").val())==''){
        alert("전화번호를 입력해주세요.");
        return false;
      } 
    if($.trim($("#email").val())==''){
        alert("이메일을 입력해주세요.");
        return false;
      } 
   
    $("#input_form").submit();
  });
</script>
<script>
	$(function() {
	        //모든 datepicker에 대한 공통 옵션 설정
	        var thisDate = new Date();
	        var thisYear = thisDate.getYear();        //해당 연
	        var thisMonth = thisDate.getMonth();    //해당 월
			
	        $.datepicker.setDefaults({
	            dateFormat: 'yymmdd'         //Input Display Format 변경
	            ,showOtherMonths: true         //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	            ,showMonthAfterYear:true     //년도 먼저 나오고, 뒤에 월 표시
	            ,changeYear: true             //콤보박스에서 년 선택 가능
	            ,changeMonth: true             //콤보박스에서 월 선택 가능         
	            ,yearSuffix: "년"             //달력의 년도 부분 뒤에 붙는 텍스트
	            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']                     //달력의 월 부분 텍스트
	            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
	            ,dayNamesMin: ['일','월','화','수','목','금','토']                                         //달력의 요일 부분 텍스트
	            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일']                 //달력의 요일 부분 Tooltip 텍스트
	        });                    
	     
	        //시작일의 초기값을 설정
	        $('#startDatepicker').datepicker({
		        minDate : 1,
	            onClose: function(selectedDate) {    
	                $("#lastDatepicker").datepicker("option", "minDate",selectedDate);
	                // 시작일(sDatepicker) datepicker가 닫힐때
	                // 종료일(eDatepicker)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
	                
	            }                
	        });
	        $('#startDatepicker').datepicker('setDate','setDate');    //시작일 초기값 셋팅
	        	        //종료일의 초기값을 내일로 설정
	        $('#lastDatepicker').datepicker({
		        minDate:2,
	            onClose: function(selectedDate) {
	                $("#startDatepicker").datepicker("option", "maxDate",selectedDate);
	                // 종료일(eDatepicker) datepicker가 닫힐때
	                // 시작일(eDatepicker)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
	                
	            }
	        });
	        $('#lastDatepicker').datepicker('setDate', 'minDate');                        //끝일 초기값 셋팅
	        
	        });

	</script>
	
</body>

</html>