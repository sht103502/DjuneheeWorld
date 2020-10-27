<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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

<!-- STYLE -->
<style>
    	
.single-new-arrival mb-50 text-center{
	padding: 0 0 0 0px;	
}

@font-face { font-family: 'GoyangIlsan'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GoyangIlsan.woff') format('woff'); font-weight: normal; font-style: normal; }

.box-wrap {
    width: 100vw; height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}
.box {
    position: relative;
    background: #000;
    width: 378px; 
    height: 275px;
    border: 3px solid #FD8F5F;
    cursor: pointer;
    overflow: hidden;
    box-shadow: 1px 1px 3px rgba(0,0,0,0.4);
    /* margin-left: 19%; */
}
.box img {
    width: 100%;
    transition: all 0.3s ease-in-out;
}
.box:before {
    content: '';
    background: #fff;
    width: 0px; height: 1px;
    position: absolute; right: 20px; top: 20px;
    transition: all 0.35s ease;
}
.box:after {
    content: '';
    background: #fff;
    width: 1px; height: 0px;
    position: absolute; right: 20px; top: 20px;
    transition: all 0.35s ease;
}

.box .info {
    position: absolute; left: 0; bottom: 0;
    color: #fff;
    background-color: rgba(53, 53, 53, 0.9);
    width: 100%;
    height: 100%;
    padding: 15px;
    box-sizing: border-box;
    opacity: 0;
    transition: all 0.3s ease-in-out;
}
.box .info h3 {
    font-size: 24px;
    line-height: 40px;
    overflow: hidden; 
    white-space: nowrap;
    text-overflow: ellipsis;
    padding-bottom: 3px;
    color: #FFFFFF;
}
.box .info p {
    font-size: 16px;
    overflow: hidden; 
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #8C8C8C;
}
.box:hover .info {
    opacity: 1;
}
.box:hover img {
    </style>
    
</head>
<body>
    <header>
        <%@ include file = "Header.jsp" %>
     </header>
    <!-- header end -->
    <main>
        <!--? slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider hero-overly2  slider-height2 d-flex align-items-center slider-bg2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-8 col-md-8">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="fadeInUp" data-delay=".4s" >엔터테이먼트</h1>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="djuneheeLandMain">디준희랜드</a></li> 
                                            <li class="breadcrumb-item"><a href="entertainment">엔터테이먼트</a></li> 
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
		<!--? Properties Start -->
		<section class="properties new-arrival fix">
			<div class="container">
				<!-- Section tittle -->
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8 col-md-10">
                        <div class="section-tittle mb-60 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                            <h2>DjuneheeLand Entertainment</h2>
                            <P>DjuneheeLand의 다양한 엔터테이먼트를 만나보세요.</P>
                        </div>
                    </div>
                </div>
				<div class="row">
					<div class="col-xl-12">
						<div class="properties__button text-center">


							<!-- 상단 버튼 -->
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link" id="nav-Sofa-tab" href="entertainmentType?etype=ALL" role="tab">전체</a>
                                    <a class="nav-item nav-link" id="nav-Table-tab"  href="entertainmentType?etype=P" role="tab">퍼레이드</a>
                                    <a class="nav-item nav-link" id="nav-Chair-tab" href="entertainmentType?etype=S" role="tab">사파리</a>
                             		<a class="nav-item nav-link" id="nav-Bed-tab"  href="entertainmentType?etype=A" role="tab">아쿠아리움</a>
                                </div>
							</nav>
							<!--End 상단 버튼  -->
						</div>
					</div>
				</div>
				
				
				<div class="row">
					<!-- 목록 -->
					<div class="tab-content" id="nav-tabContent">
						<!-- card one -->
						<div class="tab-pane fade show active" id="nav-Sofa"
							role="tabpanel" aria-labelledby="nav-Sofa-tab">
							<div class="row">
								<c:forEach var="entertainment" items="${entertainment}">
									<div class="col-lg-4 col-md-6 col-sm-6">
										<div class="single-new-arrival mb-50 text-center">
											<div class="popular-caption">
											<span>${entertainment.ename}</span>
											</div>
											
											<div class="popular-img">
											<div class="box">
												<div class="img">
													<img style="width: 378px; height: 275px;" src="${pageContext.request.contextPath}/resources/fileUpload/${entertainment.efilename}" alt="">
												</div>	
												<div class="info">
													<br/>
														<h3>운영시간 : ${entertainment.etime}</h3>
														<p>${entertainment.einformation}</p>
												</div>	
											</div>
											<div class="popular-caption">
												<span style="font-size: 15px; color: #5D5D5D;">zone : ${entertainment.ezone}</span>
											</div>
										</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 여기까지 -->    
<!--? Services Area End -->
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
    

</body>
</html>