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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/wow/animate.css"><!-- @5 플러그인 Animate CSS -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.layout.css"><!-- @6 공통 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.sub.css"><!-- @ 메인페이지 스타일-->
<!-- ********************************************플러그인********************************************* -->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.sub.js"></script><!-- # 메인페이지 함수 -->
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.calendar.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.date.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.user.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.layer.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.common.js"></script><!-- # 공통 함수 -->
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
	$("#header > #gnb > .inner > ul > li:nth-child(4)").addClass("active");
	$("#header > #gnb > .inner > ul > li:nth-child(4) > .lnb-wrap > li:nth-child(3)").addClass("active");
});
</script>
</head>
<body>
	<!-- 페이지 로딩 시작 -->
	<div id="loader-wrapper">
		<div id="loading"></div>
	</div>
	<!-- 페이지 로딩 끝 -->
	
	<!-- SkipNavigation 시작 -->
	<div id="skipnavigation">
		<ul>
			<li><a href="#sub-container">본문 바로가기 <svg class="svg-inline--fa fa-arrow-circle-right fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="arrow-circle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8c137 0 248 111 248 248S393 504 256 504 8 393 8 256 119 8 256 8zm-28.9 143.6l75.5 72.4H120c-13.3 0-24 10.7-24 24v16c0 13.3 10.7 24 24 24h182.6l-75.5 72.4c-9.7 9.3-9.9 24.8-.4 34.3l11 10.9c9.4 9.4 24.6 9.4 33.9 0L404.3 273c9.4-9.4 9.4-24.6 0-33.9L271.6 106.3c-9.4-9.4-24.6-9.4-33.9 0l-11 10.9c-9.5 9.6-9.3 25.1.4 34.4z"></path></svg><!-- <i class="fas fa-arrow-circle-right"></i> --></a></li>
		</ul>
	</div>
	<!-- SkipNavigation 끝 -->	
	
	<div id="wrap">
		<!-- 해더 시작  -->
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
		<!-- 해더 끝  -->
		
		<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
		<section id="sub-container">
			<!--  닫기 [위치 : include_web_footer.html ]  -->

			<!-- 서브 비주얼영역 시작  -->
			<div id="sub-visual" data-menu="여드름">
				<div class="sub-visual-tit">

				</div>
			</div>
			<!-- 서브 비주얼영역 끝 -->
			
			<!-- BreadCrumb 시작 -->
			<div id="breadcrumb">
				<div class="inner">
					<ul>
						<li class="home">
							<a href="${pageContext.request.contextPath}/" title="메인페이지로 이동"></a>
						</li>
						<li class="gnb">
							<button>레이저 클리닉 ▼</button>
							<ul>
								<jsp:include page="../include/pcBreadCrumb.jsp"></jsp:include>				
							</ul>
						</li>
						<li class="gnb">
							<button>여드름 ▼</button>
							<ul>
								<li><a href="${pageContext.request.contextPath}/menu04_01">다니엘 복합레이저</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_02">난치성색소</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_03">여드름</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_04">안면홍조</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_05">모공/흉터</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_06">프리미엄토닝</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_07">웨딩패키지</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_08">흉터 클리닉</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<div class="sub-contents pcode51201">
				<div class="inner">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_01.png" alt="">
				</div>
			</div>
			
			<div class="sub-contents pcode51202">
				<div class="inner">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_02.png" alt="">
				</div>
			</div>
			
			<div class="sub-contents pcode51203">
				<div class="inner">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_03.png" alt="">
				</div>
			</div>
			
			<div class="sub-contents pcode51204">
				<div class="full">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_04.png" alt="">
				</div>
			</div>
			
			
			<div class="sub-contents pcode51205">
				<ul>
					<li class="item01">
						<div class="txt">
							<span>여드름이 시작될 때,<br>초기 관리로 깨끗한 피부 사수</span>
							<p>여드름 베이직 프로그램</p>
						</div>
						<div class="txt-hover">
							<span>얼굴 전체에 퍼져 있는<br>여드름 치료</span>
							<p>복합 레이저<br>+<br>기기 관리</p>
						</div>
					</li>
					<li class="item02">
						<div class="txt">
							<span>여드름 베이직 플러스 프로그램</span>
							<p>베이직 플러스 프로그램</p>
						</div>
						<div class="txt-hover">
							<span>베이직 플러스 프로그램</span>
							<p>복합 레이저<br>+<br>피부타입별<br>(건성·지성·민감성)<br>관리 프로그램</p>
						</div>
					</li>
					<li class="item03">
						<div class="txt">
							<span>화농성, 염증, 화이트헤드<br>트러블의 끝판왕 집중 관리</span>
							<p>여드름 프리미엄 프로그램</p>
						</div>
						<div class="txt-hover">
							<span>여드름 프리미엄 프로그램</span>
							<p>복합 레이저<br>+<br>피부 타입별<br>(건성·지성·민감성)<br>관리 프로그램</p>
						</div>
					</li>
					<li class="item04">
						<div class="txt">
							<span>다른 문제 없는<br>붉은 여드름 완전 정복</span>
							<p>여드름 레인보우 프로그램</p>
						</div>
						<div class="txt-hover">
							<span>여드름 레인보우 프로그램</span>
							<p>복합 레이저<br>+<br>피부 타입별<br>(건성·지성·민감성)<br>관리 프로그램</p>
						</div>
					</li>
					<li class="item05">
						<div class="txt">
							<span>염증 좁쌀 여드름이<br>칙칙한 얼굴 탈바꿈</span>
							<p>여드름 칵테일 관리 프로그램</p>
						</div>
						<div class="txt-hover">
							<span>여드름 칵테일 관리 프로그램</span>
							<p>아쿠아필<br>+<br>레드블루그린 PDL<br>+<br>피부 타입별<br>(건성·지성·민감성)<br>관리 프로그램</p>
						</div>
					</li>
				</ul>
			</div>
			
			<div class="sub-contents pcode51206">
				<div class="inner">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_05.png" alt="">
				</div>
			</div>
			
			<div class="sub-contents pcode51207">
				<div class="inner">
					<img src="${pageContext.request.contextPath}/resources/img/contents/512_img_06.png" alt="">
				</div>
			</div>
			
			
			
			<div class="sub-contents pcode51208">
				<ul class="inner">
					<li class="item bg01">
						<h6 class="tit">사이톤줄 프로파일</h6>
						<p class="cap">
							창원에서 유일하게 다니엘에서만<br>
							보유하고 있는 장비
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							미국 scition사의 세계적으로 인정 받고 있는 흉터에 특화된 오리지널 명품 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg02">
						<h6 class="tit">엑셀 V</h6>
						<p class="cap">
							2017년형 엑셀V
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							미국 큐테라 사의 여드름, 색소침착, 모공 등 피부 전반적인 문제를 개선시켜주는 오리지널 명품 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg03">
						<h6 class="tit">스킨타이트</h6>
						<p class="cap">
							창원에서 유일하게 다니엘에서만<br>
							보유하고 있는 장비
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							미국 사이톤사의 여드름 흔적으로 어두워진 피부톤 개선에 탁월한 오리지널 명품 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg04">
						<h6 class="tit">BBL</h6>
						<p class="cap">
							창원에서 유일하게 다니엘에서만<br>
							보유하고 있는 장비
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							미국 사이톤사의 SCI급 논문에서도 그 효과를 증명한 여드름 치료에도 좋은 오리지널 명품 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg05">
						<h6 class="tit">포어타이탄</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							여드름 모양과 부위에 따라 효과적인 맞춤 시술이 가능하여 표피의 손상을 최소화하여 통증이 적고 회복기간이 빠른 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg06">
						<h6 class="tit">아그네스</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							특허기술로 니들 끝에서 고주파를 발생시켜 피지선을 줄여주어 여드름 치료에 최적화된 레이저
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg07">
						<h6 class="tit">노라보떼</h6>
						<p class="cap">
							창원에서 유일하게 다니엘에서만<br>
							보유하고 있는 장비
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							독일기술로 피부 활성 성분을 없애고 림프순환을 촉진시켜 여드름 흉터와 모공축소에 효과적인 관리 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg08">
						<h6 class="tit">LDM</h6>
						<p class="cap">
							창원 최초 도입으로 축적된<br>
							차별화된 다니엘의 노하우
						</p>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							독일 초음파 장비로 피부 속을 마사지하여 피부 문제 원인을 개선하는 명품 관리 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg09">
						<h6 class="tit">오페라마스크</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							저출력LED 및 갈바닉 전류 기능이 있어 여드름 억제, 피부 진정과 재생에 효과적인 관리 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg10">
						<h6 class="tit">힐라이트</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							강력한 상처 치유 능력을 가진 파장으로 피부의 겉과 속을 건강하게 만들어 피부 진정과 재생에 도움을 주는 관리 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg11">
						<h6 class="tit">오메가 라이트</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							복잡한 피부 문제를 해결하는 LED광선으로 피부 재생과 진정에 효과적이고 트러블 케어에도 탁월한 광원조사 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
			
					<li class="item bg12">
						<h6 class="tit">아쿠아필</h6>
						<a href="${pageContext.request.contextPath}/menu01_04" class="more">
							4세대 수분 박피술로 모공에 수분과 영양을 공급하여 피부트러블을 개선시키는 장비
							<i><img src="${pageContext.request.contextPath}/resources/img/contents/more02.png" alt=""></i>
						</a>
					</li>
				</ul>
			</div>
			
			
			
			
			<div id="caoution">
				<div class="inner">
					
					<div class="caoution-title">
						다니엘성형외과
						<p>
							시술&amp;수술 후 <em>주의사항</em>
						</p>
					</div>
		
					<!-- 주의사항 리스트 시작 -->
					<div class="caoution-list">
						<span><em>여드름레이저</em>주의사항</span>
						<ol>
							<li>모낭염증상의 발생가능성이 있습니다.</li>
							<li>처방약이 있을 시  꼭 복용해주세요.</li>
							<li>일주일간 금주,금연해주세요.</li>
							<li>일주일간 목욕,사우나,수영장, 격한 운동은 삼가주세요.</li>
							<li>재생크림,썬크림을 꼭 발라주세요.</li>
							<li>얼굴 마찰을 피해주세요.(필링제 사용, 압출 금지)</li>
							<li>아그네스 시술 시 3일 이내로 후 관리 꼭 받으세요</li>
						
						</ol>	
					</div>
					<!-- 주의사항 리스트 끝 -->
		
		
					<div class="caoution-info"><img src="${pageContext.request.contextPath}/resources/img/contents/icon_caoution.png" alt="">위 주의사항은 꼭 지켜주시고 <em>이상증상이 있을 시 연락</em>주세요.</div>
		
					<div class="double-banner">
						<ul>
							<li>
								<a href="${pageContext.request.contextPath}/menu09_06"><img src="${pageContext.request.contextPath}/resources/img/contents/double_banner01.png" alt="다니엘 성형외과 이벤트"></a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/menu04_01"><img src="${pageContext.request.contextPath}/resources/img/contents/double_banner05.png" alt="다니엘 눈코성형"></a>
							</li>
						</ul>
					</div>
		
				</div>
			</div>
			
		</section> <!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->
	
	
		<!-- 메인페이지 오시는길(오시는길, 진료시간 안내, 상담문의) 시작 -->
		<jsp:include page="../include/pcBottom.jsp"></jsp:include>
		<!-- 메인페이지 오시는길(오시는길, 진료시간 안내, 상담문의) 끝 -->
	
		<!-- 풋터 시작 (style.layout.css) -->
		<jsp:include page="../include/pcFooter.jsp"></jsp:include>
		<!-- 풋터 끝 (style.layout.css) -->
		
		<!-- 서브페이지 우측 퀵배너 시작 -->
		<jsp:include page="../include/quick.jsp"></jsp:include>
		<!-- 서브페이지 우측 퀵배너 끝 -->

	</div><!-- #wrap end -->
	
	<!-- 빠른상담 신청하기 폼 시작 -->
	<jsp:include page="../include/pcQuickInquire.jsp"></jsp:include>
	<!-- 빠른상담 신청하기 폼 끝 -->
	
	<!-- 개인정보 취급방침 팝업 시작 -->
	<jsp:include page="../include/pcPopPrivate.jsp"></jsp:include>
	<!-- 개인정보 취급방침 팝업 끝 -->
</body>
</html>


