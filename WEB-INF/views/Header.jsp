<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>

  	<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">

</head>
<body>
<!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row menu-wrapper align-items-center justify-content-between">
                        <div class="header-left d-flex align-items-center">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.html"><img src="${pageContext.request.contextPath}/resources/img/logo/Dlogo-1.png" alt=""></a>
                            </div>
                            <!-- Logo-2 -->
                            <div class="logo2">
                                <a href="index.html"><img src="${pageContext.request.contextPath}/resources/img/logo/Dlogo-2.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="index">홈</a></li>
                                        <li><a href="djuneheeLandMain">디준희 랜드</a>
                                            <ul class="submenu">
                                                <li><a href="djuneheeLandUse">이용 방법</a></li>
                                                <li><a href="recommendCourse">추천코스</a></li>
                                                <li><a href="attraction">어트랙션</a></li>
                                                <li><a href="entertainment">엔터테인먼트</a></li>
                                                <li><a href="goodsShop">굿즈 샵</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="djuneheeResortMain">디준희 리조트</a>
                                            <ul class="submenu">
                                                <li><a href="djuneheeResortUse">이용 방법</a></li>
                                                <li><a href="roomDetail">객실 정보</a></li>
                                                <li><a href="casino">카지노</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="direction">더 알아보기</a>
                                            <ul class="submenu">
                                                <li><a href="direction">오시는 길</a></li>
                                                <li><a href="pagingList">공지사항</a></li>
                                                <li><a href="events">이벤트</a></li>
                                                <li><a href="faq">FAQ</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">멤버쉽</a>
                                            <ul class="submenu">
                                            <c:if test="${sessionScope.loginID eq null }">
                                                <li><a href="joinForm">회원가입</a></li>
                                             </c:if>
                                             
                                             <c:if test="${sessionScope.loginID!=null  }">
                                             	<c:choose>
                                             		<c:when test="${sessionScope.loginID == 'admin'}">
                                             			<li><a href="adminPage">관리자 페이지</a></li>
                                             		</c:when>
                                             		<c:otherwise>
                                             			<li><a href="mypage?memberId=${sessionScope.loginID}">마이 페이지</a></li>
                                             		</c:otherwise>
                                             	</c:choose>
                                             </c:if>                                                                                                                             
                                             <li><a href="reservationLand">랜드 이용권</a></li>                                               
                                            </ul>
                                        </li>   
                                    </ul>
                                </nav>
                            </div>   
                        </div>
                        <div class="header-right1 d-flex align-items-center">
                            <div class="search">
                                <ul class="d-flex align-items-center">
                                    <!-- <li>
                                        Search Box
                                        <form action="#" class="form-box f-right ">
                                            <input type="text" name="Search" placeholder="Search products">
                                            <div class="search-icon">
                                                <i class="ti-search"></i>
                                            </div>
                                        </form>
                                    </li> -->
								
									
									<c:set var="id" value="${sessionScope.loginID}"/>
									
									 <c:choose>
										<c:when test='${sessionScope.loginID ne null}'>
											
											<li>
											<a href="mypage?memberId=${sessionScope.loginID}" class="account-btn">${sessionScope.loginID}</a>님 환영합니다 | 
											<a href="logOut" class="account-btn">로그아웃</a> </li>
										</c:when>
										
										<c:otherwise>
										<li><a href="loginForm" class="account-btn">로그인</a></li>
										</c:otherwise>
										
									</c:choose>
								
								<li>
                                        <div class="card-stor">
                                            <img src="${pageContext.request.contextPath}/resources/img/icon/card.svg" alt="" onclick="location.href='basket?loginID=${sessionScope.loginID}'">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
</body>
</html>