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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.layout.css"><!-- @6 공통 레이아웃(header, footer, snb, visual, sub, inner)	**삭제금지** -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.main.css"><!-- @ 메인페이지 스타일-->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.main.js"></script><!-- # 메인페이지 함수 -->
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

});
</script>
</head>
<body>
	<!-- 페이지 로딩 시작 -->
	<div id="loader-wrapper" style="display: none;">
		<div id="loading"></div>
	</div>
	<!-- 페이지 로딩 끝 -->
	<!-- skipnavigation 시작 -->
	<div id="skipnavigation">
		<ul>
			<li><a href="#main-container">본문 바로가기 <svg class="svg-inline--fa fa-arrow-circle-right fa-w-16" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="arrow-circle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 8c137 0 248 111 248 248S393 504 256 504 8 393 8 256 119 8 256 8zm-28.9 143.6l75.5 72.4H120c-13.3 0-24 10.7-24 24v16c0 13.3 10.7 24 24 24h182.6l-75.5 72.4c-9.7 9.3-9.9 24.8-.4 34.3l11 10.9c9.4 9.4 24.6 9.4 33.9 0L404.3 273c9.4-9.4 9.4-24.6 0-33.9L271.6 106.3c-9.4-9.4-24.6-9.4-33.9 0l-11 10.9c-9.5 9.6-9.3 25.1.4 34.4z"></path></svg><!-- <i class="fas fa-arrow-circle-right"></i> --></a></li>
		</ul>
	</div>
	<!-- skipnavigation 끝 -->
	<!-- 메인페이지 비주얼 영상 시작 -->
	<section id="video-visual">
		<div class="visual-footer">
			<div class="info">
				<span>경남 창원시 성산구 마디미로 22번길 12, 4F 다니엘성형외과의원</span>
				<span>월·수·목 10시~19시  화 14시30분~21시(야간) 금 10시~21시(야간) 토 10시~14시</span>
			</div>
			<div class="call">
				<span>상담문의 : 055 ) 284-0911</span>
				<!--span>피부상담문의 : 055 ) 284-0912</span-->
			</div>
		</div>
		<i class="visual-logo"><img src="${pageContext.request.contextPath}/resources/img/common/video_logo.png" alt=""></i>
		<i class="visual-txt"><img src="${pageContext.request.contextPath}/resources/img/common/video_txt.png" alt=""></i>
		<div class="visual-icon">
			<a href="/html/?pCode=528"><img src="${pageContext.request.contextPath}/resources/img/common/icon_sms.png" alt=""></a>
			<a href="https://talk.naver.com/ct/wc45p6" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/common/icon_why.png" alt=""></a>
			<a href="https://pf.kakao.com/_QxfxkCxl" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/common/icon_kakao.png" alt=""></a>
			<a href="/html/?pCode=501"><img src="${pageContext.request.contextPath}/resources/img/common/icon_location.png" alt=""></a>
		</div>
		<div class="line-box">
			<i class="line01"></i>
			<i class="line02"></i>
			<i class="line03"></i>
			<i class="line04"></i>
			<i class="line05"></i>
		</div> 
		<div class="top-video-area">
			<video autoplay="" muted="" loop=""><source src="${pageContext.request.contextPath}/resources/video/visual4_3.mp4" type="video/mp4"></video>
		</div>
		<div class="video-txt">
			<div class="typo-animation"></div>
		</div>
	</section>
	<!-- 메인페이지 비주얼 영상 끝 -->
	<div id="wrap">
		<!-- 해더 시작  -->
		<header id="header" class="" style="left: 0px;">
			<div class="gnb-bg" style="display: none;"></div>
			<div class="logo">
				<a href="/"><img src="${pageContext.request.contextPath}/resources/img/common/logo.png" alt=""></a>
			</div>
			<div id="gnb">
				<div class="inner">
					<ul><li class="gnb ">
						<a href="/499/?pCode=499" data-text="다니엘 소개"><span>다니엘 소개</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/499/?pCode=499" data-text="다니엘의 특별함"><span>다니엘의 특별함</span></a>
							</li><li class="lnb ">
									<a href="/500/?pCode=500" data-text="의료진 소개"><span>의료진 소개</span></a>
							</li><li class="lnb ">
									<a href="/501/?pCode=501" data-text="진료시간/오시는길"><span>진료시간/오시는길</span></a>
							</li><li class="lnb ">
									<a href="/533/?pCode=533" data-text="보유장비"><span>보유장비</span></a>
							</li><li class="lnb ">
									<a href="/707/?pCode=707" data-text="선한이웃, 다니엘"><span>선한이웃, 다니엘</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/521/?pCode=521" data-text="프리미엄 쁘띠클리닉"><span>프리미엄 쁘띠클리닉</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/521/?pCode=521" data-text="보톡스/필러"><span>보톡스/필러</span></a>
							</li><li class="lnb ">
									<a href="/522/?pCode=522" data-text="안면윤곽주사"><span>안면윤곽주사</span></a>
							</li><li class="lnb ">
									<a href="/523/?pCode=523" data-text="멀티파워주사"><span>멀티파워주사</span></a>
							</li><li class="lnb ">
									<a href="/565/?pCode=565" data-text="가격안내"><span>가격안내</span></a>
							</li><li class="lnb ">
									<a href="/683/?pCode=683" data-text="예약하기"><span>예약하기</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/510/?pCode=510" data-text="레이저 클리닉"><span>레이저 클리닉</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/510/?pCode=510" data-text="다니엘 복합레이저"><span>다니엘 복합레이저</span></a>
							</li><li class="lnb ">
									<a href="/511/?pCode=511" data-text="난치성색소"><span>난치성색소</span></a>
							</li><li class="lnb ">
									<a href="/512/?pCode=512" data-text="여드름"><span>여드름</span></a>
							</li><li class="lnb ">
									<a href="/513/?pCode=513" data-text="안면홍조"><span>안면홍조</span></a>
							</li><li class="lnb ">
									<a href="/514/?pCode=514" data-text="모공/흉터"><span>모공/흉터</span></a>
							</li><li class="lnb ">
									<a href="/685/?pCode=685" data-text="프리미엄토닝"><span>프리미엄토닝</span></a>
							</li><li class="lnb ">
									<a href="/691/?pCode=691" data-text="웨딩패키지"><span>웨딩패키지</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/517/?pCode=517" data-text="눈/코 성형"><span>눈/코 성형</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/517/?pCode=517" data-text="멜로디 눈성형"><span>멜로디 눈성형</span></a>
							</li><li class="lnb ">
									<a href="/518/?pCode=518" data-text="눈매교정"><span>눈매교정</span></a>
							</li><li class="lnb ">
									<a href="/519/?pCode=519" data-text="트임성형"><span>트임성형</span></a>
							</li><li class="lnb ">
									<a href="/520/?pCode=520" data-text="리듬 코성형"><span>리듬 코성형</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/503/?pCode=503" data-text="동안/탄력 클리닉"><span>동안/탄력 클리닉</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/503/?pCode=503" data-text="리프팅 레이저"><span>리프팅 레이저</span></a>
							</li><li class="lnb ">
									<a href="/504/?pCode=504" data-text="안면거상술"><span>안면거상술</span></a>
							</li><li class="lnb ">
									<a href="/505/?pCode=505" data-text="이마내시경거상술"><span>이마내시경거상술</span></a>
							</li><li class="lnb ">
									<a href="/506/?pCode=506" data-text="실리프팅/스킨보톡스"><span>실리프팅/스킨보톡스</span></a>
							</li><li class="lnb ">
									<a href="/507/?pCode=507" data-text="광채 지방이식"><span>광채 지방이식</span></a>
							</li><li class="lnb ">
									<a href="/508/?pCode=508" data-text="상안검/하안검"><span>상안검/하안검</span></a>
							</li><li class="lnb ">
									<a href="/567/?pCode=567" data-text="슈링크 리프팅"><span>슈링크 리프팅</span></a>
							</li><li class="lnb ">
									<a href="/686/?pCode=686" data-text="필로가135주사"><span>필로가135주사</span></a>
							</li><li class="lnb ">
									<a href="/699/?pCode=699" data-text="코레지 리프팅"><span>코레지 리프팅</span></a>
							</li><li class="lnb ">
									<a href="/705/?pCode=705" data-text="써마지FLX"><span>써마지FLX</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/509/?pCode=509" data-text="흉터 클리닉"><span>흉터 클리닉</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/509/?pCode=509" data-text="흉터 클리닉"><span>흉터 클리닉</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/525/?pCode=525" data-text="체형 클리닉"><span>체형 클리닉</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/525/?pCode=525" data-text="하모니 지방흡입"><span>하모니 지방흡입</span></a>
							</li><li class="lnb ">
									<a href="/526/?pCode=526" data-text="아큐주사"><span>아큐주사</span></a>
							</li><li class="lnb ">
									<a href="/568/?pCode=568" data-text="리포리바인"><span>리포리바인</span></a>
							</li><li class="lnb ">
									<a href="/569/?pCode=569" data-text="팻다운 주사"><span>팻다운 주사</span></a>
							</li><li class="lnb ">
									<a href="/570/?pCode=570" data-text="바디슈링크"><span>바디슈링크</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/515/?pCode=515" data-text="메디컬스킨케어"><span>메디컬스킨케어</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/515/?pCode=515" data-text="메디컬스킨케어"><span>메디컬스킨케어</span></a>
							</li><li class="lnb ">
									<a href="/516/?pCode=516" data-text="두피탈모"><span>두피탈모</span></a>
							</li></ul></li><li class="gnb ">
						<a href="/527/?pCode=527" data-text="커뮤니티"><span>커뮤니티</span></a>
							<ul class="lnb-wrap"><li class="lnb ">
									<a href="/527/?pCode=527" data-text="공지사항"><span>공지사항</span></a>
							</li><li class="lnb ">
									<a href="/528/?pCode=528" data-text="온라인 상담"><span>온라인 상담</span></a>
							</li><li class="lnb ">
									<a href="/529/?pCode=529" data-text="시술 전후 사진"><span>시술 전후 사진</span></a>
							</li><li class="lnb ">
									<a href="/530/?pCode=530" data-text="리얼스토리"><span>리얼스토리</span></a>
							</li><li class="lnb ">
									<a href="/696/?pCode=696" data-text="자필후기"><span>자필후기</span></a>
							</li><li class="lnb ">
									<a href="/563/?pCode=563" data-text="이벤트"><span>이벤트</span></a>
							</li><li class="lnb ">
									<a href="/590/?pCode=590" data-text="예약하기"><span>예약하기</span></a>
							</li><li class="lnb ">
									<a href="/591/?pCode=591" data-text="시술&amp;수술주의사항"><span>시술&amp;수술주의사항</span></a>
							</li></ul></li></ul>		</div>
			</div>
			<div class="gnb-login">
				<a href="/login" class="login">로그인 ▶</a>
				<a href="/join" class="join">회원가입 ▶</a>
			</div>
		
			<a href="/590/?pCode=590" class="gnb-view"></a>
		</header><!-- 해더 끝  -->
	
		<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
		<section id="main-container">
		<!--  닫기 [위치 : include_web_footer.html ]  -->
			<!-- 메인페이지 슬라이드 팝업 영역 시작 -->
			<div id="pop_banner" style="display: none;">
				<i class="pop-close-btn"></i>
				<div class="pannel">
					<div class="tlt">
						<img src="${pageContext.request.contextPath}/resources/img/main/img_pop_logo.png" alt="">
						<a href="#" class="pop-close-btn"></a>
					</div>
					<div class="con">
						<ul>
							<li><a href="/590/?pCode=590"><img src="${pageContext.request.contextPath}/resources/img/main/ban_pop_main_001.png" alt=""></a></li>
							<li><a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=46"><img src="${pageContext.request.contextPath}/resources/img/main/ban_pop_main_002.png" alt=""></a></li>
							<li><a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=45"><img src="${pageContext.request.contextPath}/resources/img/main/ban_pop_main_003.png" alt=""></a></li>
						</ul>
					</div>
				</div>
			</div>
			<script>
			$('#pop_banner .pop-close-btn').on('click', function() {
				$('#pop_banner').fadeOut();
				return false;
			});
			</script>

			<!-- 메인페이지 비주얼 슬라이드 시작 -->
			<section class="visual-slide">
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/main/slide_img01.jpg">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/main/slide_img02.jpg">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/main/slide_img03.jpg">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/resources/img/main/slide_img04.jpg">
				</div>
				<div>
					<a href=""><img src="${pageContext.request.contextPath}/resources/img/main/slide_img05.jpg"></a>
				</div>
			</section><!-- 메인페이지 비주얼 슬라이드 끝 -->

			<!-- 비주얼 타이틀 시작 -->
			<section class="visual-title">
				<img src="${pageContext.request.contextPath}/resources/img/main/visual_title.png" alt="DANIEL SPECIAL SKIN CLINC">
			</section><!-- 비주얼 타이틀 시작 -->

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
								<div class="flop" onclick="location.href='/512/?pCode=512'">
									<h6 class="tit">여드름 치료</h6>
									<span class="special">지문형 시스템으로<br>피부 진단부터 특별합니다.</span>
									<p class="cap">풍부한 임상 경험과 체계화된 진단 시스템으로<br>여드름의 원인을 정확하게 파악합니다.</p>
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
			
								<div class="flop" onclick="location.href='/511/?pCode=511'">
									<h6 class="tit">기미치료</h6>
									<span class="special">피부 타입과 증상에 따라 <br>특화된 치료법을 개발하였습니다.</span>
									<p class="cap">개개인의 피부 컨디션에 따라 선별적으로 사용되어 <br>100가지가 넘는 복합 프로그램이 존재합니다.</p>
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
			
								<div class="flop" onclick="location.href='/517/?pCode=517'">
									<h6 class="tit">다니엘 멜로디 눈성형</h6>
									<span class="special">단순히 눈을 크게 만드는것이 아니라<br>얼굴의 전반적인 조화를 고려합니다.</span>
									<p class="cap">얼굴의 형태, 눈의 크기, 피부상태, 눈꺼풀 지방의 함유량 등을 고려해<br>이상적인 비율과 균형을 이룰 수 있게 디자인 합니다.</p>
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
			
								<div class="flop" onclick="location.href='/503/?pCode=503'">
									<h6 class="tit">리프팅</h6>
									<span class="special">피부 복구와 노화 방지에 <br>최적화된 프로그램</span>
									<p class="cap">피부 노화는 기능성 화장품으로 해결하기에는 역부족입니다.<br>피부타입, 노화 진행 패턴에 맞춰서 치료가 진행됩니다.</p>
								</div>
							</div>
							<b class="num">04</b>
						</li>
						<!-- 아코디언 메뉴(리프팅) 끝 -->
					</ul>
				</div>
			</section><!-- 메인 플릿 플랍 에니메이션의 배너 끝 -->
	
			<!-- 고정 배너영역 시작 -->
			<section class="daniel-banner" style="background:none; padding-top:100px;">
				<!-- 비주얼 타이틀 시작 -->
				<div class="visual-title">
					<img src="${pageContext.request.contextPath}/resources/img/main/visual_title02.png" alt="다니엘 성형외과의 이벤트와 소식을 알려드립니다.">
				</div>
				<!-- 비주얼 타이틀 끝 -->
				
				<!-- 슬라이드 배너 시작 -->
				<ul class="slider-banner">
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb09.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">Summer</p>
							<h6 class="tit">다니엘이 추천하는 상품</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=46" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb08.png) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">NEW 4세대</p>
							<h6 class="tit">써마지 FLX</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=45" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb06.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">공명플라즈마</p>
							<h6 class="tit">코레지 도입기념 이벤트</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=43" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>	
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb04.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">Early Bird EVENT</p>
							<h6 class="tit">얼리버드 데이 이벤트</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=42" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>	
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb05.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">UP DAY EVENT</p>
							<h6 class="tit">수요일엔 업데이 이벤트</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=41" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
					<li class="item" style="background:url(${pageContext.request.contextPath}/resources/img/main/thumb02.jpg) no-repeat center top;">
						<div class="slider-banner-info">
							<i class="kinds">EVENT</i>
							<p class="cap">맞춤웨딩프로그램</p>
							<h6 class="tit">웨딩 D-Day 패키지</h6>
							<a href="/563/?pCode=563&amp;distinction=view&amp;perm=Y&amp;page=1&amp;seq=39" class="more" title="자세히 보기" data-slick-inner="5">자세히</a>
						</div>
					</li>
				</ul><!-- 슬라이드 배너 끝 -->
			</section>
		</section>
	</div>
	
	<div class="daniel-banner">
		<!-- 고정 배너(4개) 시작 -->
		<ul class="fixed-banner">
			<li>
				<a href="/520/?pCode=520" title="다니엘 리듬 코성형"><img src="${pageContext.request.contextPath}/resources/img/main/daniel_banner01.jpg" alt="자연스러운 아름다움, 다니엘 리듬 코성형"></a>
			</li>
			<li>
				<a href="/514/?pCode=514" title="모공＆흉터치료"><img src="${pageContext.request.contextPath}/resources/img/main/daniel_banner02.jpg" alt="여드름 흉터와 모공 흔적없이 지워드립니다. 모공 및 흉터치료"></a>
			</li>
			<li>
				<a href="/510/?pCode=510" title="다니엘 복합레이저"><img src="${pageContext.request.contextPath}/resources/img/main/daniel_banner03.jpg" alt="말 뿐인 맞춤시술과 비교를 거부합니다. 다니엘 복합레이저"></a>
			</li>
			<li>
				<a href="/521/?pCode=521" title="보톡스＆필러"><img src="${pageContext.request.contextPath}/resources/img/main/daniel_banner04.jpg" alt="성형외과 전문의가 직접 시술하는 보톡스 및 필러"></a>
			</li>
		</ul>
		<!-- 고정 배너(4개) 끝 -->
	</div>
	<!-- 고정 배너영역 끝 -->
	<!-- #main-container , #sub-container 닫기 [위치 : include_web_top.html ] -->
	<!-- 메인페이지 오시는길(오시는길, 진료시간 안내, 상담문의) 시작 -->
	<section class="daniel-location">
		<ul>
			<!-- 오시는길(지도)시작 -->
			<li class="location">
				<div class="location-info">
					<i class="kinds">MAP</i>
					<h6 class="tit">오시는 길</h6>
					<p class="cap">경남 창원시 성산구 마디미로22번길 12, 4F</p>
					<a href="/501/?pCode=501" class="more" title="자세히 보기">자세히</a>
				</div>
			</li>
			<!-- 오시는길(지도)끝 -->

			<!-- 진료시간 안내 시작 -->
			<li class="hospital-info">
				<h6 class="tit"><b>진료시간</b> 안내 테이블</h6>
				<i class="bar"></i>
				<table class="time-table">
					<caption>진료시간 안내 테이블</caption>
					<tbody>
						<tr>
							<th>월·수·목</th>
							<td>AM 10시 ~ PM 7시</td>
						</tr>
						<tr>
							<th>화</th>
							<td>PM 2시 30분 ~ PM 9시 <span>(야간)</span></td>
						</tr>
						<tr>
							<th>금</th>
							<td>AM 10시 ~ PM 9시 <span>(야간)</span></td>
						</tr>
						<tr>
							<th>토요일</th>
							<td>AM 10시 ~ PM 2시</td>
						</tr>
						<tr>
							<th>점심시간</th>
							<td>PM 1시 ~ PM 2시 30분</td>
						</tr>
					</tbody>
				</table>
				<p class="cap">
					※ 토요일은 점심시간 없이 진료합니다.<br>
					※ 일요일 및 공휴일은 휴진입니다.
				</p>
				<a href="/501/?pCode=501" class="more" title="자세히 보기">자세히 보기</a>
			</li>
			<!-- 진료시간 안내 끝 -->

			<!-- 상담문의 시작 -->
			<li class="counsel">
				<div class="counsel-info">
					<h6 class="tit">상담문의</h6>
					<a href="tel:055-284-0911" class="call" title="">055)<b>284.0911</b></a>
					<p class="cap">빠르고 친절하게 상담하겠습니다 </p>
				</div>
				<div class="counsel-sns">
					<a href="http://pf.kakao.com/_EZraj" target="_blank" class="kakao">카카오톡 상담<b>@다니엘성형외과</b></a>
					<a href="https://talk.naver.com/ct/wc45p6" target="_blank" class="naver">네이버 톡톡</a>
					<a href="/528/?pCode=528" class="online">온라인 상담</a>
				</div>
			</li>
			<!-- 상담문의 끝 -->
		</ul>
	</section>
	<!-- 메인페이지 오시는길(오시는길, 진료시간 안내, 상담문의) 끝 -->
	<!-- 풋터 시작 (style.layout.css) -->
	
	<footer id="footer">
		<div class="inner">
			<!-- fnb 시작 -->
			<ul class="fnb">
				<li>
					<a href="/499/?pCode=499">다니엘 소개</a>
				</li>
				<li>
					<a href="/501/?pCode=501">찾아오시는 길</a>
				</li>
				<li>
					<a href="/personal">개인정보보호정책</a>
				</li>
				<li>
					<a href="/agree">이용약관</a>
				</li>
				<li>
					<a href="/528/?pCode=528">온라인상담</a>
				</li>
			</ul>
			<!-- fnb 끝 -->
			<ul class="footer-info">
				<p>
					<span>다니엘성형외과의원 진료과목 피부과</span>
					<span>주소 : 경남 창원시 성산구 마디미로22번길 12, 4F 다니엘성형외과의원  진료과목 피부과</span>
				</p>
				<p>
					<span>사업자등록번호 : 514-50-00033</span>
					<span>대표 : 윤상호</span>
					<span>성형상담문의 : 055-284-0911</span>
					<span>피부상담문의 : 055-284-0912</span>
				</p>
				<p class="copyright">Copyright @ DanielPlasticSurgery all rights reserved. Designed by <a href="http://wetheweb.net" target="_blank">TheWEB</a></p>
			</ul>
		</div>
	</footer>
	<!-- 풋터 끝 (style.layout.css) -->
	<!-- 서브페이지 우측 퀵배너 시작 -->
	<!-- 서브페이지 우측 퀵배너 끝 -->
	<!-- #wrap 닫기 -->
	
	<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
	<script type="text/javascript"> 
		if (!wcs_add) var wcs_add={};
			wcs_add["wa"] = "s_4711a698fadd";
		if (!_nasa) var _nasa={};
			wcs.inflow();
		wcs_do(_nasa);
	</script>
	<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
	<script language="javascript">
		var _AceGID=(function(){var Inf=['dgc12.acecounter.com','8080','AP4T42369817671','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
		var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
	</script>
	<noscript><img src='http://dgc12.acecounter.com:8080/?uid=AP4T42369817671&je=n&' border='0' width='0' height='0' alt=''></noscript>
	<!-- AceCounter Log Gathering Script End -->
	<script>
		//빠른상담 신청하기 ajax함수 들어가는 부분
	</script>
	<!-- 빠른상담 신청폼 -->
	<!-- 빠른상담 신청하기 폼 시작 -->
	<div id="quick-inquire">
		<button><img src="${pageContext.request.contextPath}/resources/img/landing/web/theme/btn_quick_counsel.jpg" alt=""></button>
		<div class="inner">
			<form name="land" id="land" method="post">
			<fieldset>
			<legend>빠른 상담신청</legend>
			<input type="hidden" name="mode" value="insert">
				<ul class="quick-counsel01">
					<li>
						<label for="i_name">고객명</label>
						<input name="i_name" id="i_name" type="text" data-name="고객명" valid="required">
					</li>
					<li>
						<label for="i_tel1">연락처</label>
						<input name="i_tel1" id="i_tel1" type="text" maxlength="3" data-name="연락처" valid="required,phone_tel33">
						<input name="i_tel2" id="i_tel2" type="text" maxlength="4" data-name="연락처" valid="required,phone_tel34">
						<input name="i_tel3" id="i_tel3" type="text" maxlength="4" data-name="연락처" valid="required,phone_tel44">
					</li>
					<li>
						<label for="i_kind">상담분야</label>
						<select name="i_kind" id="i_kind" class="both"><option value="동안탄력클리닉">동안탄력클리닉</option><option value="레이저클리닉">레이저클리닉</option><option value="흉터클리닉">흉터클리닉</option><option value="눈코성형">눈코성형</option><option value="쁘띠클리닉">쁘띠클리닉</option><option value="체형클리닉">체형클리닉</option><option value="두피클리닉">두피클리닉</option><option value="기타">기타</option></select>				</li>
				</ul>
				<ul class="quick-counsel02">
					<li>
						<label for="i_content" data-name="상담내용">상담내용</label>
						<textarea name="i_content" id="i_content" data-name="상담내용" valid="required" placeholder="상담내용과 전화가능 시간대를 입력해 주세요"></textarea>
	
						<button type="button" class="btn-private">개인정보취급방침</button>
						<span class="private">
							<input title="약관동의" id="agree" type="checkbox" checked="" value="Y">
							<label data-name="동의" for="agree">동의합니다.</label>
						</span>
					</li>
					<li>
						<button type="button" onclick="land_it('insert')" data-name="간편상담신청"><img src="${pageContext.request.contextPath}/resources/img/landing/web/theme/btn_quick_counsel_submit.jpg" alt=""></button>
					</li>
				</ul>
			</fieldset>
			</form>
		</div>
	</div>
	<!-- 빠른상담 신청하기 폼 끝 -->
	<!-- 개인정보 취급방침 팝업 시작 -->
	<div class="pop-private">
		<div class="pop-inner">
			<h3><svg class="svg-inline--fa fa-lock fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z"></path></svg><!-- <i class="fas fa-lock"></i> --> 개인정보 취급방침</h3>
			<p>
				<b>1.개인정보 수집이용에 대한 동의</b>
				‘다니엘성형외과의원’는 회원님의 개인정보를 중요시하며, “정보통신망
				이용촉진 및 정보보호”에 관한 법률을 준수하고 있습니다.
				회원님의 소중한 개인정보는 다음과 같은 정책에 따라 수집 및 이용되며,
				회원님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,
				개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
				또한 개인정보취급방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할
				것입니다.<br><br><br>
	
				<b>2.개인정보의 수집•이용 목적</b>
				회원님께서 요청하신 제휴 문의에 대한 질의에 더욱 정확한 답변을 위해 성함,
				연락처, 상담내용 등의 정보가 수집됩니다.
				- 수집항목 : 성명, 연락처, 상담내용
				- 이용목적 : 상담내용에 대한 답변, 상담 관련 마케팅 및 정보안내
				고지에 활용<br><br><br>
	
				<b>3.보유이용 기간</b>
				원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 바로
				파기합니다. 단, 다음의 정보에 대해서는 아래의 사유로 명시한기간 동안 보존합니다.
				- 보존 이유 : 회원님의 동의를 통한 정보 유지
				- 보존 기간 : 회원정보 삭제 요청 시까지
			</p>
			<button class="pop-close" type="button"><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --> 닫기</button>
		</div>
	</div>
	<!-- 개인정보 취급방침 팝업 끝 -->
	<script>
		function land_callback(){
			/* $.post("/landing/inquire_proc.php", $("#land").serialize(), function(data){
				alert("상담신청이 완료되었습니다.\n고객님의 소중한 정보는 상담에만 이용됩니다.\n빠른시일내에 답변드리겠습니다. 감사합니다");
				land_it('reset');
			}); */
		/*
			$.ajax({
						type: 'post'
						, async: true
						, url: '/landing/inquire_proc.php'
						, dataType:"json"
						, data: {
							push_token:push_token,
							mode:"base"
						}, success: function(data) {
							//alert(data.id);
		
						},error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					});*/
		}
		
		function land_it($mode){
			var fm = document.land;
		
			if(!$('#agree').is(':checked')) {
				alert("개인정보취급방침에 동의해 주시길 바랍니다.");
				return false;
			}
		
			if($mode == "insert"){
				if( !$("#land").validate() ) return;
				land_callback();
		
			}else if($mode == "reset"){
				fm.reset();
			}
		}
	</script>
	
</body>
</html>