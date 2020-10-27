<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/script/style.css" type="text/css">
<title>DjuneheeWorld</title>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/djunehee favicon.ico">
	<meta http-equiv="refresh">
<script type="text/javascript">

var img=new Array();
img[0]=new Image(); img[0].src="/resources/img/jenna1+2.jpg";
img[1]=new Image(); img[1].src="/resources/img/jenna2-1.jpg";
img[2]=new Image(); img[2].src="/resources/img/jenna3+1.jpg";
var interval=1500;
var n=0;
var imgs = new Array("${pageContext.request.contextPath}/resources/img/jenna1+2.jpg","${pageContext.request.contextPath}/resources/img/jenna2-1.jpg","${pageContext.request.contextPath}/resources/img/jenna3+1.jpg");
function rotate()
{
if(navigator.appName=="Netscape" && document.getElementById)
{
document.getElementById("slide").src=imgs[n];
}
else document.images.slide.src=imgs[n];
(n==(imgs.length-1))?n=0:n++;
setTimeout("rotate()",interval);
}

</script>
<style>
img{
width:1920px;
height:965px;
}
body{
margin:0 0 0 0;
width:100%;
heigth:100%;
}

@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

a{
    position: relative;
    display: inline-block;
    padding: 25px 30px;
    margin: 40px 0;
    color: #03e9f4;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.5s;
    letter-spacing: 4px;
    overflow: hidden;
    margin-right: 50px;
   
}
a:hover{
    background: #03e9f4;
    color: #050801;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 200px #03e9f4;
     -webkit-box-reflect:below 1px linear-gradient(transparent, #0005);
}
a:nth-child(1){
    filter: hue-rotate(270deg);
}
a:nth-child(2){
    filter: hue-rotate(110deg);
}
a span{
    position: absolute;
    display: block;
}
a span:nth-child(1){
    top: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg,transparent,#03e9f4);
    animation: animate1 1s linear infinite;
}
@keyframes animate1{
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
a span:nth-child(2){
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#03e9f4);
    animation: animate2 1s linear infinite;
    animation-delay: 0.25s;
}
@keyframes animate2{
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
a span:nth-child(3){
    bottom: 0;
    right: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#03e9f4);
    animation: animate3 1s linear infinite;
    animation-delay: 0.50s;
}
@keyframes animate3{
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}


a span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#03e9f4);
    animation: animate4 1s linear infinite;
    animation-delay: 0.75s;
}
@keyframes animate4{
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100%;
    }
}

/* .landBtn{
	position:absolute;
	top:40%;
	left:20%;
}
.resortBtn{
	position:absolute;
	top:40%;
	right:20%;
	} */
/* 스마트폰 가로+세로and (max-device-width : 480px) */
@media only screen and (min-device-width : 320px) and (max-device-width : 480px) {
.main{
margin-top:45%;
margin-bottom:45%;
width:100%;
height:100%;
} 
.landBtn{
position:absolute;
	top:45%;
	left:10%;
}
.resortBtn{
position:absolute;
	top:45%;
	right:10%;
	}
}

 /* 스마트폰 가로 */
@media only screen and (min-width : 321px) and(min-device-height : 100px){
/* .main{
margin:0 0 0 0;
}
.landBtn{
position:absolute;
	top:45%;
	left:10%;
}
.resortBtn{
position:absolute;
	top:45%;
	right:10%;
	}
} */
}

 /* 스마트폰 세로 */
@media only screen and (max-width : 310px) {
.main{

width:100%;
height:100%;
}
.landBtn{
position:absolute;
	top:40%;
	left:20%;
}
.resortBtn{
position:absolute;
	top:40%;
	right:20%;
}
}

/* iPhone4와 같은 높은 크기 세로 */
@media
only screen and (-webkit-min-device-pixel-ratio : 1.5),  
only screen and (min-device-pixel-ratio : 1.5) {  
}

/* iPhone4와 같은 높은 해상도 가로 */
@media only screen and (min-width : 640px) {
}

/* iPad 가로+세로 */
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px) {
}

/* iPad 가로 */
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px) and (orientation : landscape) {
}

/* iPad 세로 */
@media only screen and (min-device-width : 768px) and (max-device-width : 1024px) and (orientation : portrait) {
}

/* 데스크탑 브라우저 가로 */
@media only screen and (min-width : 1224px) {

}

/* 큰 모니터 */
@media only screen and (min-width : 1824px){
.main{
width:100%;
}
.landBtn{
	position:absolute;
	top:40%;
	left:20%;
}
.resortBtn{
	position:absolute;
	top:40%;
	right:20%;
}
}

</style>
</head>
<body onload="rotate()">
<bgsound src="/resources/music/Ooh.mp3" loop="5">
	<embed src="${pageContext.request.contextPath}/resources/music/Ooh.mp3" autostart="true" loop="true" hidden="true" />
	<div>
		<div>
		 	<img src="${pageContext.request.contextPath}/resources/img/jenna1+2.jpg" id="slide" class="main">	
			 <a class="landBtn" href="djuneheeLandMain"><span></span> <span></span><span></span> <span></span>디준희 랜드</a>
			 <a class="resortBtn" href="djuneheeResortMain"><span></span> <span></span><span></span> <span></span>디준희 리조트</a>
		</div>
	</div>

	

</body>
</html>