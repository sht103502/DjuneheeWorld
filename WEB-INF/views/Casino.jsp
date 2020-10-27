<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>디준희리조트</title>
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="resources/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="resources/css/bootstrap.min2.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/slicknav.css">
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="resources/css/lightslider.min.css">
    <link rel="stylesheet" href="resources/css/price_rangs.css">
    <link rel="stylesheet" href="resources/css/gijgo.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/animated-headline.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <link rel="stylesheet" href="resources/css/slick.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
    <link rel="stylesheet" href="resources/css/casino.css">

    
</head>
<body>
	  <header>
        <%@ include file = "Header.jsp" %>
      </header>
   
    <!-- header end -->
    <main>
        <!--메인 페이지 Area start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg1">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >카지노</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="djuneheeResortMain">디준희리조트</a></li>
                                            <li class="breadcrumb-item"><a href="casino">카지노</a></li> 
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 메인페이지 끝-->
        <!-- 첫번째 섹션 시작 -->

        
        <!--카지노 게임 소개 -->
        <section class="properties new-arrival fix">
            <div class="container">
                <!-- 섹션 제목 -->
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8 col-md-10">
                    <!-- 섹션 내용 -->
                        <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <h2 style="font-size:30px;">국내 최대 외국인 전용 프리미엄 카지노</h2>
                            <P>최고의 시설을 바탕으로 최상의 명품 서비스를 제공하는 파라다이스 카지노.<br/>파라다이스 카지노는 서울, 인천, 부산, 제주에서<br/>최고의 시설과 품격 있는 서비스로 즐거움을 선사합니다.</P>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="properties__button text-center">
                           
                            <nav> 
                            <!-- 카지노 난이도 분류  Narbar들을 연결시켜준다.-->
                            <!-- aria-controls코드는 해당탭의 본문과 연결시켜준다.-->                        
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-Card1-tab" data-toggle="tab" href="#nav-Card1" role="tab" aria-controls="nav-Card1" aria-selected="true">초보자</a>
                                    <a class="nav-item nav-link" id="nav-Card2-tab" data-toggle="tab" href="#nav-Card2" role="tab" aria-controls="nav-Card2" aria-selected="false">중급</a>
                                    <a class="nav-item nav-link" id="nav-Card3-tab" data-toggle="tab" href="#nav-Card3" role="tab" aria-controls="nav-Card3" aria-selected="false">고급</a>  
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="row">                    
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-Card1" role="tabpanel" aria-labelledby="nav-Card1-tab">
                            <div class="row">
                            <!-- 블랙잭 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/BlackJack.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>블랙잭</h3>
                                            <span>플레이어와 딜러가 각각 카드를 나누어 받아, 그 합이 21 또는 21에 가까운 숫자를 얻어 승부를 겨루는 게임</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 바카라 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/Bacara.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>바카라</h3>
                                            <span>플레이어 카드와 뱅커 카드를 게임규칙에 따라 받고 합을 비교하여 9에 가까운 측이 이기는 게임</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 다이사이 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/Daisai.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>다이사이</h3>
                                            <span>플레이어가 배팅한 숫자 혹은 숫자의 조합이 Shaker에 의해 결정된 3개의 주사위 숫자의 합과 일치하도록 맞추는 게임</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      <!-- Navbar 2번째-->
                        <div class="tab-pane fade" id="nav-Card2" role="tabpanel" aria-labelledby="nav-Table-Card2">
                            <!-- 룰렛 소개  -->
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/Rollet.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>룰렛</h3>
                                            <span>회전하고 있는 원형 회전판의 방향과 반대방향으로 볼을 회전시킨 후 볼이 휠의 특정 번호에 낙착되면 그번호 또는 구역에 배팅한 플레이어가 당첨되는 게임</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 슬롯머신 및 비디오게임 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/SlotGame.jpg" alt=""style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>슬롯 머신 및 비디오 게임</h3>
                                            <span>베팅 금액을 선택한 후 부착된 핸들이나 버튼을 작동시키면 게임이 진행됩니다. 머신 게임 기기에 나타난 심볼이 미리 정해진 시상표와 동일한 조건을 갖추면 그에 해당하는 배당금을 지급받게 됩니다.</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 전자 테이블 게임소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/Electronic.png" alt=""style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>전자 테이블 게임</h3>
                                            <span>전자 테이블 게임은 카지노의 새로운 최첨단 전자 멀티 게임으로, 한대의 전자기계에서 여러게임(최대4종)을 동시에 즐길 수 있는 새로운 방식의 전자게임</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Navbar 3번째 -->
                        <div class="tab-pane fade" id="nav-Card3" role="tabpanel" aria-labelledby="nav-Card3-tab">
                            <div class="row">
                            <!-- 세블럭 포커 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/SevenLuck.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>세븐럭 포커</h3>
                                            <span>플레이어와 딜러가 각각 3장의 카드를 받아 높은 서열의 패를 가진 쪽이 승리하는 게임</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 텍사스 홀덤 보너스 카드 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/Texas.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>텍사스 홀덤 보너스 카드</h3>
                                            <span>1Deck의 카드를 사용하여 각각의 플레이어가 2장의 플레이어 카드와 5장의 커뮤니티 카드를 포함한 총 7장의 카드를 이용하여 다른 플레이어를 기권하게 하거나 높은 핸드를 소유한 플레이어가 이기는 게임</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카지노 워 소개  -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-new-arrival mb-50 text-center">
                                        <div class="popular-img">
                                            <img src="resources/img/gallery/CasinoWar.jpg" alt="" style="height:237px;">
                                        </div>
                                        <div class="popular-caption">
                                            <h3>카지노 워</h3>
                                            <span>카지노 워 게임은 1장의 카드로 정해진 카드별 가치에 따라 하우스와 고객이 우열을 겨루고 높은 가치를 가진 측이 이기는 게임</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Navbar 끝  -->
                </div>
            </div>
        </section>
        <!-- Properties End -->
        
        <!-- 두번째 섹션 시작 -->
        <div class="visit-tailor-area fix">
            <!--오른쪽 내용  -->
            <div class="tailor-offers"></div>
            <!-- 왼쪽내용 -->
            <div class="tailor-details">
                <h2>"최고"의 시설<br> "최고"의 서비스</h2>
                <p>우리 디준희랜드 카지노는 최고만을 고집합니다.</p>
            </div>
        </div>
        
        
        <!-- 두번째 섹션 끝 -->
        <!-- 세번쨰 섹션 시작-->
        <div class="new-arrival new-arrival2">
            <div class="container">
                <!-- 섹션 제목 -->
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-8 col-md-10">
                    <!-- 섹션 내용 -->
                        <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                            <h2>Gallery</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--? 세번째 섹션  끝 -->
        <!--? 네번째 섹션 시작 -->
        <!-- 갤러리 사진들 소개 -->
		<div class="instagram-area">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-xl-9 col-lg-8">
						<div class="row no-gutters">
							<!-- 사진1 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img//gallery/gallery_w_img1.jpg" alt=""
										class="w-100"> <span>VVIP룸</span>
								</div>
							</div>
							<!-- 사진2 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img//gallery/gallery_w_img2.jpg" alt=""
										class="w-100"> <span>전경</span>
								</div>
							</div>
							<!-- 사진3 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img3.jpg" alt=""
										class="w-100"> <span>바</span>
								</div>
							</div>
							<!-- 사진4 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img4.jpg" alt=""
										class="w-100"> <span>슬롯머신</span>
								</div>
							</div>
							<!-- 사진5 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img5.jpg" alt=""
										class="w-100"> <span>전경</span>
								</div>
							</div>
							<!-- 사진6 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img6.jpg" alt=""
										class="w-100"> <span>전경</span>
								</div>
							</div>
							<!-- 사진7 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img7.jpg" alt=""
										class="w-100"> <span>VIP라운지</span>
								</div>
							</div>
							<!-- 사진8 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img8.jpg" alt=""
										class="w-100"> <span>ETG 전자 테이블
											게임</span>
								</div>
							</div>
							<!-- 사진9 -->
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
								<div class="single-instagram">
									<img src="resources/img/gallery/gallery_w_img9.jpg" alt=""
										class="w-100"> <span>전경</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 네번째 섹션 끝 -->
		 <br><br><br><br>   

 <!--다섯번째 섹션 시작  -->
 <!--층 서비스 시작 -->
  <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
<h2>FLOOR SERVICE</h2>
</div>
 <div class="categories-area section-padding40 gray-bg">
    <div class="container">
        <div class="row">
            <!-- 아이콘 1 -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                    <div class="cat-icon">
                        <img src="resources/img/icon/Charge.png" alt=""style="width:50px;height:50px;">
                    </div>
                    <!-- 내용 -->
                    <div class="cat-cap">
                        <h5>빠른, 무료의 충전서비스</h5>
                        <p>초고속 충전 가능</p>
                    </div>
                </div>
            </div>
             <!-- 아이콘 2 -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                    <div class="cat-icon">
                        <img src="resources/img/icon/Security.png" alt="" style="width:50px;height:50px;">
                    </div>
                     <!-- 내용 -->
                    <div class="cat-cap">
                        <h5>보안카드 발급 서비스</h5>
                        <p>무료 발급 가능</p>
                    </div>
                </div>
            </div>
             <!-- 아이콘 3 -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                    <div class="cat-icon">
                        <img src="resources/img/icon/MoneyBack.png" alt="" style="width:50px;height:50px;">
                    </div>
                     <!-- 내용 -->
                    <div class="cat-cap">
                        <h5>현금 환전 서비스</h5>
                        <p>24 시간 환전 가능</p>
                    </div>
                </div>
            </div>
             <!-- 아이콘 4 -->
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                    <div class="cat-icon">
                        <img src="resources/img/icon/Online.png" alt="" style="width:50px;height:50px;">
                    </div>
                     <!-- 내용 -->
                    <div class="cat-cap">
                        <h5>온라인 서비스</h5>
                        <p>24시간 온라인 서비스 가능</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--다섯번째 섹션 끝-->
</main>
<footer>
       <%@ include file = "Footer.jsp" %>
</footer>
<!-- Scroll Up -->
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->
<!-- Jquery, Popper, Bootstrap -->
<script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<!-- Slick-slider , Owl-Carousel ,slick-nav -->
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/jquery.slicknav.min.js"></script>

<!-- One Page, Animated-HeadLin, Date Picker , price, light-slider -->
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/animated.headline.js"></script>
<script src="resources/js/jquery.magnific-popup.js"></script>
<script src="resources/js/gijgo.min.js"></script>
<script src="resources/js/lightslider.min.js"></script>
<script src="resources/js/price_rangs.js"></script>

<!-- Nice-select, sticky,Progress -->
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/jquery.sticky.js"></script>
<script src="resources/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="resources/js/jquery.counterup.min.js"></script>
<script src="resources/js/waypoints.min.js"></script>
<script src="resources/js/jquery.countdown.min.js"></script>
<script src="resources/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="resources/js/plugins.js"></script>
<script src="resources/js/main.js"></script>

</body>
</html>