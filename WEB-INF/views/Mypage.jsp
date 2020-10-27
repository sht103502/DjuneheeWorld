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
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightslider.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/price_rangs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gijgo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animated-headline.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body class="full-wrapper">
    <!--  로딩시 뜨는 로고  -->
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    
    <%@ include file = "Header.jsp" %>
    
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
                                <span>${memberView.mname} 님의 정보</span>
                            </div>
                            <!-- Single Input Fields -->
                            <div class="input-box">
                            
                                <div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
                                    <label for ="id">아이디</label>
                                    <p style="font-weight: 500; font-size : 20px;">${memberView.mid}</p>
                                    <input type="hidden" value="${memberView.mid}" id="memberId"/>
                                    <input type="hidden" value="${memberView.mpassword}" id="memberPassword"/>
                                </div>
                                
                               <div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
									<!-- 이름 -->
									<label for="name" >이름</label>
									<p style="font-weight: 500; font-size : 20px;">${memberView.mname}</p>
								</div>
								
								<div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
									<!-- 전화번호 -->
									<label for="phone">전화번호</label>
									<p style="font-weight: 550; font-size : 20px;">${memberView.mphone}</p>
								</div>
								
								<div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
									<!-- 주소 -->
									<label for="address">주소</label>
									<p style="font-weight: 550; font-size : 18px;">${memberView.maddress}</p>
								</div>
								
								<div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
									<!-- 생일 -->
									<label for="birth">생일</label>
									<p style="font-weight: 500; font-size : 20px;">${memberView.mbirth}</p>
								</div>
								
								<div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9; margin-bottom:10px;">
									<!-- 이메일 -->
									<label for="email">이메일</label>
									<p style="font-weight: 500; font-size : 20px;">${memberView.memail}</p>
								</div>
								
								<div class="single-input-fields" style="border-bottom : solid 1px #C9C9C9;">
									<!-- 티켓이름 -->
									<label for="ticket">구매날짜 및 티켓명 : <p style="font-weight: 550; font-size : 18px;">${memberView.mdate}  ${memberView.mticket}</p></label>
									
								</div>
                                
                            </div>
                            <!-- form Footer -->
                            <div class="login-footer">
                                <button class="submit-btn3" style="margin-left:100px;" onclick="memberModify()">정보수정</button>
                                <!-- <button class="submit-btn3" onclick="submit()"><a href="MypageCheck?mid=id">예약및구매내역</a></button> -->
                                <button class="submit-btn3" style="margin-right:100px;" onclick="memberOut()">회원탈퇴</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login Area End -->
    </main>
   
      
      <!-- Scroll Up -->
      <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>
    

    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/ontext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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
    
  
    
</body>

  <script>
  //회원정보 수정

    function memberModify(){
    	var memberId=document.getElementById("memberId").value;
    	var memberPassword=document.getElementById("memberPassword").value;
    	var checkPassword=prompt("비밀번호를 입력해주세요!");
    	if(checkPassword==memberPassword){
    		alert("비밀번호가 일치합니다.");
    		location.href="memberModify?mid="+memberId;
    	}else{
    		alert("비밀번호가 일치하지 않습니다.");
    	}
    }

     

    //회원탈퇴

    function memberOut(){
    	var memberPassword=document.getElementById("memberPassword").value;
    	var memberId=document.getElementById("memberId").value;
    	var checkPassword=prompt("정말 탈퇴하는 건가요'^' 비밀번호를 입력해주세요...");
    	if(checkPassword==memberPassword){
    		alert("비밀번호가 일치합니다.");
    		location.href="memberOut?mid="+memberId;
    	}else{
    		alert("비밀번호가 일치하지 않습니다.");
    	}
    }

    </script>
    

</html>