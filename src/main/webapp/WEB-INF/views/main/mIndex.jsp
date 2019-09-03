<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다니엘성형외과의원 진료과목 피부과</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<!-- ************************************************************************************************* -->
<!-- @ = 스타일, # = 자바스크립트 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.reset.css"><!-- @1 스타일 초기화		**삭제/수정금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.common.css"><!-- @2 공통 스타일		**삭제금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick.css"><!-- @3 플러그인 Slick -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/slick/slick-theme.css"><!-- @4 플러그인 Slick Theme -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/wow/animate.css"><!-- @5 플러그인 Animate CSS -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/style.layout.css"><!-- @6 공통 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/style.main.css"><!-- @ 메인페이지 스타일-->
<!-- ********************************************플러그인********************************************* -->
<script src="http://cr.acecounter.com/Web/AceCounter_CW.js?gc=AP4T42369817671&amp;py=0&amp;gd=dgc12&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1566887341954"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script><!-- #1 1.12.4  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.1.js"></script><!-- #jquery UI  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/fontawesome/js/fontawesome-all.min.js"></script><!-- #2 플러그인 fontawesome -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick/slick.js"></script><!-- #3 플러그인 Slick -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wow/wow.min.js"></script><!-- #4 플러그인 Wow -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wow/scrollspy.js"></script><!-- #5 플러그인 Scrollspy -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.rwdImageMaps.js"></script><!-- #6 플러그인 rwdImageMaps -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.sns.share.js"></script><!-- #7 플러그인 SNS SHARE -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.modernizr.js"></script><!-- #8 플러그인 modernizr -->
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/m/jquery.main.js"></script><!-- # 메인페이지 함수 -->
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.calendar.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.date.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.user.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.layer.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/m/jquery.common.js"></script><!-- # 공통 함수 -->
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<style type="text/css">
svg:not (:root ).svg-inline--fa {
	overflow: visible
}

.svg-inline--fa {
	display: inline-block;
	font-size: inherit;
	height: 1em;
	overflow: visible;
	vertical-align: -.125em
}

.svg-inline--fa.fa-lg {
	vertical-align: -.225em
}

.svg-inline--fa.fa-w-1 {
	width: .0625em
}

.svg-inline--fa.fa-w-2 {
	width: .125em
}

.svg-inline--fa.fa-w-3 {
	width: .1875em
}

.svg-inline--fa.fa-w-4 {
	width: .25em
}

.svg-inline--fa.fa-w-5 {
	width: .3125em
}

.svg-inline--fa.fa-w-6 {
	width: .375em
}

.svg-inline--fa.fa-w-7 {
	width: .4375em
}

.svg-inline--fa.fa-w-8 {
	width: .5em
}

.svg-inline--fa.fa-w-9 {
	width: .5625em
}

.svg-inline--fa.fa-w-10 {
	width: .625em
}

.svg-inline--fa.fa-w-11 {
	width: .6875em
}

.svg-inline--fa.fa-w-12 {
	width: .75em
}

.svg-inline--fa.fa-w-13 {
	width: .8125em
}

.svg-inline--fa.fa-w-14 {
	width: .875em
}

.svg-inline--fa.fa-w-15 {
	width: .9375em
}

.svg-inline--fa.fa-w-16 {
	width: 1em
}

.svg-inline--fa.fa-w-17 {
	width: 1.0625em
}

.svg-inline--fa.fa-w-18 {
	width: 1.125em
}

.svg-inline--fa.fa-w-19 {
	width: 1.1875em
}

.svg-inline--fa.fa-w-20 {
	width: 1.25em
}

.svg-inline--fa.fa-pull-left {
	margin-right: .3em;
	width: auto
}

.svg-inline--fa.fa-pull-right {
	margin-left: .3em;
	width: auto
}

.svg-inline--fa.fa-border {
	height: 1.5em
}

.svg-inline--fa.fa-li {
	width: 2em
}

.svg-inline--fa.fa-fw {
	width: 1.25em
}

.fa-layers svg.svg-inline--fa {
	bottom: 0;
	left: 0;
	margin: auto;
	position: absolute;
	right: 0;
	top: 0
}

.fa-layers {
	display: inline-block;
	height: 1em;
	position: relative;
	text-align: center;
	vertical-align: -.125em;
	width: 1em
}

.fa-layers svg.svg-inline--fa {
	-webkit-transform-origin: center center;
	transform-origin: center center
}

.fa-layers-counter, .fa-layers-text {
	display: inline-block;
	position: absolute;
	text-align: center
}

.fa-layers-text {
	left: 50%;
	top: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-transform-origin: center center;
	transform-origin: center center
}

.fa-layers-counter {
	background-color: #ff253a;
	border-radius: 1em;
	color: #fff;
	height: 1.5em;
	line-height: 1;
	max-width: 5em;
	min-width: 1.5em;
	overflow: hidden;
	padding: .25em;
	right: 0;
	text-overflow: ellipsis;
	top: 0;
	-webkit-transform: scale(.25);
	transform: scale(.25);
	-webkit-transform-origin: top right;
	transform-origin: top right
}

.fa-layers-bottom-right {
	bottom: 0;
	right: 0;
	top: auto;
	-webkit-transform: scale(.25);
	transform: scale(.25);
	-webkit-transform-origin: bottom right;
	transform-origin: bottom right
}

.fa-layers-bottom-left {
	bottom: 0;
	left: 0;
	right: auto;
	top: auto;
	-webkit-transform: scale(.25);
	transform: scale(.25);
	-webkit-transform-origin: bottom left;
	transform-origin: bottom left
}

.fa-layers-top-right {
	right: 0;
	top: 0;
	-webkit-transform: scale(.25);
	transform: scale(.25);
	-webkit-transform-origin: top right;
	transform-origin: top right
}

.fa-layers-top-left {
	left: 0;
	right: auto;
	top: 0;
	-webkit-transform: scale(.25);
	transform: scale(.25);
	-webkit-transform-origin: top left;
	transform-origin: top left
}

.fa-lg {
	font-size: 1.33333em;
	line-height: .75em;
	vertical-align: -.0667em
}

.fa-xs {
	font-size: .75em
}

.fa-sm {
	font-size: .875em
}

.fa-1x {
	font-size: 1em
}

.fa-2x {
	font-size: 2em
}

.fa-3x {
	font-size: 3em
}

.fa-4x {
	font-size: 4em
}

.fa-5x {
	font-size: 5em
}

.fa-6x {
	font-size: 6em
}

.fa-7x {
	font-size: 7em
}

.fa-8x {
	font-size: 8em
}

.fa-9x {
	font-size: 9em
}

.fa-10x {
	font-size: 10em
}

.fa-fw {
	text-align: center;
	width: 1.25em
}

.fa-ul {
	list-style-type: none;
	margin-left: 2.5em;
	padding-left: 0
}

.fa-ul>li {
	position: relative
}

.fa-li {
	left: -2em;
	position: absolute;
	text-align: center;
	width: 2em;
	line-height: inherit
}

.fa-border {
	border: solid .08em #eee;
	border-radius: .1em;
	padding: .2em .25em .15em
}

.fa-pull-left {
	float: left
}

.fa-pull-right {
	float: right
}

.fa.fa-pull-left, .fab.fa-pull-left, .fal.fa-pull-left, .far.fa-pull-left,
	.fas.fa-pull-left {
	margin-right: .3em
}

.fa.fa-pull-right, .fab.fa-pull-right, .fal.fa-pull-right, .far.fa-pull-right,
	.fas.fa-pull-right {
	margin-left: .3em
}

.fa-spin {
	-webkit-animation: fa-spin 2s infinite linear;
	animation: fa-spin 2s infinite linear
}

.fa-pulse {
	-webkit-animation: fa-spin 1s infinite steps(8);
	animation: fa-spin 1s infinite steps(8)
}

@
-webkit-keyframes fa-spin { 0%{
	-webkit-transform: rotate(0);
	transform: rotate(0)
}

/* 100%{
-webkit-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
@
keyframes fa-spin { 0%{
	-webkit-transform: rotate(0);
	transform: rotate(0)
}

100%{
-webkit-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
} */
.fa-rotate-90 {
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg)
}

.fa-rotate-180 {
	-webkit-transform: rotate(180deg);
	transform: rotate(180deg)
}

.fa-rotate-270 {
	-webkit-transform: rotate(270deg);
	transform: rotate(270deg)
}

.fa-flip-horizontal {
	-webkit-transform: scale(-1, 1);
	transform: scale(-1, 1)
}

.fa-flip-vertical {
	-webkit-transform: scale(1, -1);
	transform: scale(1, -1)
}

.fa-flip-horizontal.fa-flip-vertical {
	-webkit-transform: scale(-1, -1);
	transform: scale(-1, -1)
}

:root .fa-flip-horizontal, :root .fa-flip-vertical, :root .fa-rotate-180,
	:root .fa-rotate-270, :root .fa-rotate-90 {
	-webkit-filter: none;
	filter: none
}

.fa-stack {
	display: inline-block;
	height: 2em;
	position: relative;
	width: 2em
}

.fa-stack-1x, .fa-stack-2x {
	bottom: 0;
	left: 0;
	margin: auto;
	position: absolute;
	right: 0;
	top: 0
}

.svg-inline--fa.fa-stack-1x {
	height: 1em;
	width: 1em
}

.svg-inline--fa.fa-stack-2x {
	height: 2em;
	width: 2em
}

.fa-inverse {
	color: #fff
}

.sr-only {
	border: 0;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px
}

.sr-only-focusable:active, .sr-only-focusable:focus {
	clip: auto;
	height: auto;
	margin: 0;
	overflow: visible;
	position: static;
	width: auto
}

</style>
<script>
$(function(){
	
});
</script>
</head>
<body>
	<div class="gnb-dim"></div>
	
	<!-- 메인페이지 비주얼 영상 시작 -->
	<section id="video-visual">
		<div class="visual-footer">
			<a href="/m/589/?pCode=589" class="quick-reserve" title="예약하기"></a>
			<div class="call">
				<a href="tel:055-284-0911">상담문의 : 055 ) 284-0911</a>
				<!--a href="tel:055-284-0912">피부상담문의 : 055 ) 284-0912</a-->
			</div>
		</div>
		<i class="visual-logo"><img src="${pageContext.request.contextPath}/resources/img/common/video_logo.png" alt=""></i>
		<a href="${pageContext.request.contextPath}/resources/video/visual3.mp4" class="visual-txt"><img src="${pageContext.request.contextPath}/resources/img/m/main/play.png" alt=""></a>
		<div class="visual-icon">
			<a href="/m/528//?pCode=528"><img src="${pageContext.request.contextPath}/resources/img/common/icon_sms.png" alt=""></a>
			<a href="https://talk.naver.com/ct/wc45p6" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/common/icon_why.png" alt=""></a>
			<a href="https://pf.kakao.com/_QxfxkCxl" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/common/icon_kakao.png" alt=""></a>
			<a href="/m/501/?pCode=501"><img src="${pageContext.request.contextPath}/resources/img/common/icon_location.png" alt=""></a>
		</div>
		<div class="line-box">
			<i class="line01"></i>
			<i class="line02"></i>
			<i class="line03"></i>
			<i class="line04"></i>
			<i class="line05"></i>
		</div>
		<video autoplay="" muted="" loop=""><source src="${pageContext.request.contextPath}/resources/video/visual4_2.mp4" type="video/mp4"></video>
		<div class="video-txt">
			<div class="typo-animation"></div>
		</div>
	</section>
	<!-- 메인페이지 비주얼 영상 끝 -->
	
	<div id="wrap">
		<!-- 해더 시작  -->
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
		<!-- 해더 끝  -->
	
		<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
		<section id="main-container">
		<!--  닫기 [위치 : include_web_footer.html ]  -->

			<!-- 메인페이지 비주얼 슬라이드 시작 -->
			<section class="visual-slide">
				<div><img src="${pageContext.request.contextPath}/resources/img/m/main/slide_img01.jpg" alt="흉터, 고민말고 다니엘"></div>
				<div><img src="${pageContext.request.contextPath}/resources/img/m/main/slide_img02.jpg" alt="흉터, 고민말고 다니엘"></div>
				<div><img src="${pageContext.request.contextPath}/resources/img/m/main/slide_img03.jpg" alt="흉터, 고민말고 다니엘"></div>
				<div><img src="${pageContext.request.contextPath}/resources/img/m/main/slide_img04.jpg" alt="흉터, 고민말고 다니엘"></div>
				<div><a href="${pageContext.request.contextPath}/mMenu09_07" title="예약하기"><img src="${pageContext.request.contextPath}/resources/img/m/main/slide_img05.jpg" alt="성형외과전문의 쁘띠"></a></div>
			</section>
			<!-- 메인페이지 비주얼 슬라이드 끝 -->
		
			<div class="visual-title">
				<img src="${pageContext.request.contextPath}/resources/img/m/main/visual_title01.png" alt="">
			</div>
		
			<!-- 메인 플릿 플랍 에니메이션의 배너 시작 -->
			<section class="visual-banner">
				<div class="accordion">
					<ul>
						<!-- 아코디언 메뉴(여드름치료) 시작 -->
						<li tabindex="1">
							<div class="flip-flop">
								<div class="flip">
									<p class="cap">
										여드름 치료<br>
										효과 보기 어디 쉽나요?<br>
										<b>다니엘</b>은 쉽습니다.
									</p>
									<i class="line"></i>
									<h6 class="tit">여드름치료</h6>
								</div>
								<div class="flop" onclick="location.href='/m/512/?pCode=512'">
									<h6 class="tit">여드름 치료</h6>
									<span class="special">지문형 시스템으로<br>피부 진단부터 특별합니다.</span>
									<p class="cap">풍부한 임상 경험과 체계화된 진단 시스템으로 여드름의 원인을 정확하게 파악합니다.</p>
								</div>
							</div>
							<b class="num">01</b>
						</li>
						<!-- 아코디언 메뉴(여드름치료) 끝 -->
			
						<!-- 아코디언 메뉴(기미치료) 시작 -->
						<li tabindex="2">
							<div class="flip-flop">
								<div class="flip">
									<p class="cap">
										피부과 시술<br>
										다 거기서 거기 아닌가요?<br>
										<b>다니엘</b>은 다릅니다.
									</p>
									<i class="line"></i>
									<h6 class="tit">기미치료</h6>
								</div>
			
								<div class="flop" onclick="location.href='/m/511/?pCode=511'">
									<h6 class="tit">기미치료</h6>
									<span class="special">피부 타입과 증상에 따라 <br>특화된 치료법을 개발하였습니다.</span>
									<p class="cap">개개인의 피부 컨디션에 따라 선별적으로 사용되어 100가지가 넘는 복합 프로그램이 존재합니다.</p>
								</div>
							</div>
							<b class="num">02</b>
						</li>
						<!-- 아코디언 메뉴(기미치료) 끝 -->
			
						<!-- 아코디언 메뉴(다니엘 멜로디 눈성형) 시작 -->
						<li tabindex="3">
							<div class="flip-flop">
								<div class="flip">
									<p class="cap">
										첫인상에서<br>
										가장 중요한 부분은?<br>
										<b>매력적인 눈</b>을 만들어 드립니다.
									</p>
									<i class="line"></i>
									<h6 class="tit">다니엘<br>멜로디 눈성형</h6>
								</div>
			
								<div class="flop" onclick="location.href='/m/517/?pCode=517'">
									<h6 class="tit">다니엘 멜로디 눈성형</h6>
									<span class="special">단순히 눈을 크게 만드는것이 아니라<br>얼굴의 전반적인 조화를 고려합니다.</span>
									<p class="cap">얼굴의 형태, 눈의 크기, 피부상태, 눈꺼풀 지방의 함유량 등을 고려해 이상적인 비율과 균형을 이룰 수 있게 디자인 합니다.</p>
								</div>
							</div>
							<b class="num">03</b>
						</li>
						<!-- 아코디언 메뉴(다니엘 멜로디 눈성형) 끝 -->
			
						<!-- 아코디언 메뉴(리프팅) 시작 -->
						<li tabindex="4">
							<div class="flip-flop">
								<div class="flip">
									<p class="cap">
										빠르게, 부담없이, 자연스럽게<br>
										수술없이 예쁜 얼굴라인을 만들고 싶어요<br>
										후회없는 선택, <b>다니엘</b>
									</p>
									<i class="line"></i>
									<h6 class="tit">리프팅</h6>
								</div>
			
								<div class="flop" onclick="location.href='/m/503/?pCode=503'">
									<h6 class="tit">리프팅</h6>
									<span class="special">피부 복구와 노화 방지에 <br>최적화된 프로그램</span>
									<p class="cap">피부 노화는 기능성 화장품으로 해결하기에는 역부족입니다. 피부타입, 노화 진행 패턴에 맞춰서 치료가 진행됩니다.</p>
								</div>
							</div>
							<b class="num">04</b>
						</li>
						<!-- 아코디언 메뉴(리프팅) 끝 -->
					</ul>
				</div>
			</section>
			<!-- 메인 플릿 플랍 에니메이션의 배너 끝 -->
		
		
			<section id="daniel-banner02">
				<!-- 비주얼 타이틀 시작 -->
				<div class="visual-title">
					<img src="${pageContext.request.contextPath}/resources/img/m/main/visual_title02.png" alt="다니엘 성형외과의 이벤트와 소식을 알려드립니다.">
				</div>
				<!-- 비주얼 타이틀 끝 -->
				<!-- 슬라이드 배너 시작 -->
				<ul class="slider-banner">
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb09.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">Summer</p>
							<h6 class="tit">다니엘이 추천하는 상품</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=46" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb08.png) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">NEW 4세대</p>
							<h6 class="tit">써마지 FLX</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=45" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb06.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">공명플라즈마</p>
							<h6 class="tit">코레지 도입기념 이벤트</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=43" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb04.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">Early Bird EVENT</p>
							<h6 class="tit">얼리버드 데이 이벤트</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=42" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb05.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">UP DAY EVENT</p>
							<h6 class="tit">수요일엔 업데이 이벤트</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=41" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb02.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">맞춤웨딩프로그램</p>
							<h6 class="tit">웨딩 D-Day 패키지</h6>
							<a href="/m/564/?pCode=564&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=39" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
			
					<!--
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb03.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">NOTICE</i>
							<p class="cap">진료시간변경안내</p>
							<h6 class="tit">화요일 오전휴진</h6>
							<a href="/m/564/?pCode=527&mode=view&perm=Y&select_key=&input_key=&Scod=BRD01&pCode=527&btap=&page=1&seq=2036" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					-->
					
				</ul>
				<!-- 슬라이드 배너 끝 -->
			</section>

			<section id="daniel-banner">
				<ul class="inner">
					<li><a href="/m/520/?pCode=520" title="다니엘 리듬 코성형"><img src="${pageContext.request.contextPath}/resources/img/m/main/daniel_banner01.png" alt="자연스러운 아름다움, 다니엘 리듬 코성형"></a></li>
					<li><a href="/m/514/?pCode=514" title="모공＆흉터치료"><img src="${pageContext.request.contextPath}/resources/img/m/main/daniel_banner02.png" alt="여드름 흉터와 모공 흔적없이 지워드립니다. 모공 및 흉터치료"></a></li>
					<li><a href="/m/510/?pCode=510" title="다니엘 복합레이저"><img src="${pageContext.request.contextPath}/resources/img/m/main/daniel_banner03.png" alt="말 뿐인 맞춤시술과 비교를 거부합니다. 다니엘 복합레이저"></a></li>
					<li><a href="/m/521/?pCode=521" title="보톡스＆필러"><img src="${pageContext.request.contextPath}/resources/img/m/main/daniel_banner04.png" alt="성형외과 전문의가 직접 시술하는 보톡스 및 필러"></a></li>
				</ul>
			</section>

		</section> <!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->
	
	
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 시작 -->
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 끝 (style.layout.css) -->
		
	</div>
	
	<jsp:include page="../include/mQuickInquire.jsp"></jsp:include>
</body>
</html>