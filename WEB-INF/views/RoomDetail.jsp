<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

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
  <body>
  <header>
        <%@ include file = "Header.jsp" %>
</header>

    <main>
    <!--? Single Product Area Start-->
    <div class="product_image_area section-padding40" style="padding-bottom:0;">
      <div class="container">
          
        <div class="row s_product_inner">
          <div class="col-lg-5">
            <div class="product_slider_img">
              <div id="vertical">
                <div data-thumb="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename1}">
                  <img src="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename1}" / class="w-100">
                </div>
                <div data-thumb="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename2}">
                  <img src="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename2}"/ class="w-100">
                </div>
                <div data-thumb="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename3}">
                  <img src="${pageContext.request.contextPath}/resources/img/resortRoom/${roomView.rfilename3}" / class="w-100">
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 offset-lg-1">
            <div class="s_product_text">
            <form action="reservation" method="GET">
              <h3>${roomView.rtype}</h3>
              <h2>${roomView.rprice} 원~</h2>
              <br/><br/>
              <ul class="list">
                <li>
                  <a class="active">
                    <span>전망</span> : ${roomView.rview}</a>
                  </li>
                  <li>
                    <a class="active">
                      <span>침대</span> : ${roomView.rbed}</a>
                  </li>
                  <li>
                    <a class="active">
                      <span>크기</span> : ${roomView.rwidth}</a>
                    </li>
                    <li>
                      <a class="active">
                        <span>룸구성</span> : ${roomView.ramount}</a>
                    </li>
                </ul>
              
                <div class="card_area">
                 
                  <div class="add_to_cart" style="margin-top: 20px;">
                    <c:choose>
                    <c:when test="${sessionScope.loginID ne null }">
                    <input type="submit" value="예약하기" class="btn">
                    </c:when>
                    </c:choose>
                    <c:choose>
                    <c:when test="${sessionScope.loginID eq null }">
                    <input type="button" value="로그인후 이용하기" class="btn" onclick="location.href='loginForm'">
                    </c:when>
                    </c:choose>
                  </div>
            </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Single Product Area End-->
      <!--? Product Description Area Start-->
      <section class="product_description_area">
        <div class="container">
            <div class="tab-content" id="myTabContent" style="border-top:1px #FD8F5F solid" >
          <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
            <div class="row">
              <div class="col-lg-6" style="max-width:65%; flex: 0 0 65%;">
                          <div class="review_list">
                          	<div class="review_item" style="text-align:center;">
                          		<br>
                              <p style="font-size:25px; color: #FD8F5F;">
                              "${roomView.rheadline}"
                              </p>
                              <br/> <hr style="width: 300px; margin-left:30%;"> <br/>
                             
                             
                              <p style="font-size:17px;">
                              ${roomView.rinformation}
                              </p>
                              <br/>
                              <hr>
                            </div>
                            <div class="review_item">
                              <div class="media">
                                
                                <div class="media-body">
                                  <h3 style="font-weight: bold;">객실이용</h3>
                                </div>
                              </div>
                              <p style="font-size:16px;">
                                - 65인치 스마트 TV(위성 TV 48개 채널)<br/>  
                                - 50~100Mbps 초고속 유·무선(wifi) 인터넷 무료<br/>
                                - 220V, 110V 전압 사용 가능<br/>
                                - 커피·차 티백 무료 제공<br/>
                                - 엑스트라 베드 1개 추가 36,300원/1박 (현장에서 결제하세요)<br/>
                                - 베이비 크립(무료)<br/>
                              </p>
                              <hr>
                            </div>
                            <div class="review_item">
                              <div class="media">
                                
                                <div class="media-body">
                                  <h3 style="font-weight: bold;">룸서비스</h3>
                                </div>
                              </div>
                              <p style="font-size:16px;">
                                - 객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.<br/>
                                - 식사 및 음료 : 24시간 서비스<br/>
                                - 중식, 일식 : 점심 12:00~14:00, 저녁 18:00~21:30
                              </p>
                              <hr>
                            </div>
                            <div class="review_item">
                              <div class="media">
                                
                                <div class="media-body">
                                  <h3 style="font-weight: bold;">부대시설</h3>
                                </div>
                              </div>
                              <p style="font-size:16px;">
                              ${roomView.rfacility}
                              </p>
                              <hr>
                            </div>

                            <div class="review_item">
                              <div class="media">
                                
                                <div class="media-body">
                                  <h3 style="font-weight: bold;">추가정보</h3>
                                </div>
                              </div>
                              <p style="font-size:16px;">
                                - 디준희 랜듸의 모든 시설은 전부 금연이오니, 이용에 착오 없으시기 바랍니다.<br/>
                                - 모든 요금에 세금 10% 및 봉사료 10%(합계 21%)가 부과됩니다.<br/><br/>
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/speaker.jpg">
                                	짐정리 도움 서비스 (Suite 이상 요청 고객)
                              </p>
                              
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-6" style="max-width:35%; flex: 0 0 35%;">
                          <div class="blog_right_sidebar">
                          <aside class="single_sidebar_widget post_category_widget">
                            <h2 style="color:#fd7e14; font-weight: bold;">객실</h2><br>
                            <h class="widget_title" style="color: dark-gray; font-size:18px; font-weight:bold;">스탠다드</h>
                            <ul class="list cat-list">
                              <li>
                                <a href="roomDetail?rnum=DR0001" class="d-flex">
                                   <p style="margin-top: 15px;"> 디럭스</p>
                                </a>
                             </li>
                               <li>
                                  <a href="roomDetail?rnum=BD0001" class="d-flex">
                                     <p>비즈니스 디럭스</p>
                                  </a>
                               </li>
                               <li>
                                  <a href="roomDetail?rnum=CD0001" class="d-flex">
                                     <p>그랜드 코너 디럭스</p>
                                  </a>
                                </li>
                               
                            </ul><br/>
                            <h class="widget_title" style="color: dark-gray; font-size:18px; font-weight:bold;">이그제큐티브</h>
                            <ul class="list cat-list">
                              <li>
                                <a href="roomDetail?rnum=EBD0001" class="d-flex">
                                   <p style="margin-top: 15px;">이그제큐티브 비즈니스 디럭스</p>
                                </a>
                             </li>
                               
                               <li>
                                  <a href="roomDetail?rnum=EGD0001" class="d-flex">
                                     <p>이그제큐티브 그랜드 디럭스</p>
                                  </a>
                               </li>
                               
                            </ul><br/>
                            <h class="widget_title" style="color: dark-gray; font-size:18px; font-weight:bold;">스위트</h>
                            <ul class="list cat-list">
                              <li>
                                <a href="roomDetail?rnum=SS0001" class="d-flex">
                                   <p style="margin-top: 15px;">수페리어 스위트</p>
                                </a>
                             </li>
                               <li>
                                  <a href="roomDetail?rnum=KS0001" class="d-flex">
                                     <p>코리안 스위트</p>
                                  </a>
                               </li>
                               <li>
                                  <a href="roomDetail?rnum=CS0001" class="d-flex">
                                     <p>코너 스위트</p>
                                  </a>
                               </li>
                               <li>
                                <a href="roomDetail?rnum=PRS0001" class="d-flex">
                                   <p>프리미어 스위트</p>
                                </a>
                             </li>
                             <li>
                              <a href="roomDetail?rnum=RS0001" class="d-flex">
                                 <p>로열 스위트</p>
                              </a>
                           </li>
                           <li>
                            <a href="roomDetail?rnum=PDS0001" class="d-flex">
                               <p>프렌지덴셜 스위트</p>
                            </a>
                         </li>
                               
                            </ul>
                         </aside>
                         </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
              <!-- Product Description Area End-->
             
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
            <script src="${pageContext.request.contextPath}/resources/js/lightslider.min.js"></script>

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