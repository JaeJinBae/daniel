
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.board.css">
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
	$("#header > #gnb > .inner > ul > li:nth-child(9)").addClass("active");
	$("#header > #gnb > .inner > ul > li:nth-child(9) > .lnb-wrap > li:nth-child(3)").addClass("active");
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
			<div id="sub-visual" data-menu="시술 전후 사진">
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
							<button>커뮤니티 ▼</button>
							<ul>
								<jsp:include page="../include/pcBreadCrumb.jsp"></jsp:include>				
							</ul>
						</li>
						<li class="gnb">
							<button>시술 전후 사진 ▼</button>
							<ul>
								<li><a href="${pageContext.request.contextPath}/menu09_01">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_02">온라인 상담</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_03">시술 전후 사진</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_04">리얼스토리</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_05">자필후기</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_06">이벤트</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_07">예약하기</a></li>
								<li><a href="${pageContext.request.contextPath}/menu09_08">시술&수술주의사항</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<!-- 게시판 타이틀 시작 -->
			<div class="board-titl">
				<h5>시술 전후 사진</h5>
			</div>
			<!-- 게시판 타이틀 끝 -->
			
			<div class="board-kinds">
				<ul class="inner">
					<li class="active">
						<a href="?pCode=529">
							전체
						</a>
					</li>
			
					<li>
						<a href="?pCode=529&amp;btap=동안·탄력 클리닉">동안·탄력 클리닉</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=레이저클리닉">레이저클리닉</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=흉터클리닉">흉터클리닉</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=눈·코 성형">눈·코 성형</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=프리미엄 쁘띠클리닉">프리미엄 쁘띠클리닉</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=체형클리닉">체형클리닉</a>
					</li>
					<li>
						<a href="?pCode=529&amp;btap=두피클리닉">두피클리닉</a>
					</li>
				</ul>
			</div>
			
			
			
			<div class="before-after">
				<ul class="inner">
					<input type="hidden" name="top_vis" value="2104">
					<li class="item">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_7C8EA2990FE50BBE.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_F1E9F4FDA390D145.png&quot;);">
							<i>After</i>
						</span>
						<p> 하안검 절개</p>
					</li>
				</ul>
			</div>
			<div class="before-after-thumb">
				<ul class="inner">
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2104&amp;link=0|||2104')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_7C8EA2990FE50BBE.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_F1E9F4FDA390D145.png&quot;);" id="thum_2104">
							<i>After</i>
						</span>
						<p> 하안검 절개</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2103&amp;link=0|||2103')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_8A647BEC990F0686.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190715_903A16D4E7F9CF40.png&quot;);" id="thum_2103">
							<i>After</i>
						</span>
						<p> 화이트닝 복합레이저 5회</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2097&amp;link=0|||2097')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_C88ACA6BC890C9FF.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_3DA8BF7EFF5D859B.png&quot;);" id="thum_2097">
							<i>After</i>
						</span>
						<p> 이마거상+하안검+눈매교정</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2096&amp;link=0|||2096')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_D51E584B0A143BFA.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_7F82445A9A782A11.png&quot;);" id="thum_2096">
							<i>After</i>
						</span>
						<p> 안면거상술</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2095&amp;link=0|||2095')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_6639C2E3FAE4247D.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190612_EEE4E0A6C7AFFCE0.png&quot;);" id="thum_2095">
							<i>After</i>
						</span>
						<p> 콧볼축소</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2086&amp;link=0|||2086')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_52726F616980731C.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_E902BF5D2EB15570.png&quot;);" id="thum_2086">
							<i>After</i>
						</span>
						<p> 하안검</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2085&amp;link=0|||2085')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_977A10AEF79943AB.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_933A2A90ACCED349.png&quot;);" id="thum_2085">
							<i>After</i>
						</span>
						<p> 홍조,기미,잡티(드림패키지)</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2084&amp;link=0|||2084')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_81832C9E22241D8E.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_41F0C915186F5140.png&quot;);" id="thum_2084">
							<i>After</i>
						</span>
						<p> 부분절개 눈매교정 재수술+앞트임+뒤트임</p>
					</li>
				
					<li class="item" onclick="board_it('main_vis', 'mode=visual&amp;Scod=BRD20&amp;seq=2083&amp;link=0|||2083')">
						<span class="before" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_606C12A9F4C6B0B1.png&quot;);">
							<i>Before</i>
						</span>
						<span class="after" style="background-image: url(&quot;${pageContext.request.contextPath}/resources/filedata/board/BRD20/20190510_CCD8209522938403.png&quot;);" id="thum_2083">
							<i>After</i>
						</span>
						<p> 하안검 부분절개</p>
					</li>
				
				</ul>
			</div>
				
			<!-- 페이징 시작 -->
			<div id="board-pagenation">
				<div class="inner">
					<a href="javascript:;">
						<svg class="svg-inline--fa fa-angle-double-left fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-double-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M223.7 239l136-136c9.4-9.4 24.6-9.4 33.9 0l22.6 22.6c9.4 9.4 9.4 24.6 0 33.9L319.9 256l96.4 96.4c9.4 9.4 9.4 24.6 0 33.9L393.7 409c-9.4 9.4-24.6 9.4-33.9 0l-136-136c-9.5-9.4-9.5-24.6-.1-34zm-192 34l136 136c9.4 9.4 24.6 9.4 33.9 0l22.6-22.6c9.4-9.4 9.4-24.6 0-33.9L127.9 256l96.4-96.4c9.4-9.4 9.4-24.6 0-33.9L201.7 103c-9.4-9.4-24.6-9.4-33.9 0l-136 136c-9.5 9.4-9.5 24.6-.1 34z"></path></svg><!-- <i class="fas fa-angle-double-left"></i> --></a><a href="javascript:;"><svg class="svg-inline--fa fa-angle-left fa-w-8" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path fill="currentColor" d="M31.7 239l136-136c9.4-9.4 24.6-9.4 33.9 0l22.6 22.6c9.4 9.4 9.4 24.6 0 33.9L127.9 256l96.4 96.4c9.4 9.4 9.4 24.6 0 33.9L201.7 409c-9.4 9.4-24.6 9.4-33.9 0l-136-136c-9.5-9.4-9.5-24.6-.1-34z"></path></svg><!-- <i class="fas fa-angle-left"></i> -->
					</a>
					<a href="javascript:;" class="on">1</a>
					<a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=2 ">2</a>
					<a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=3 ">3</a>
					<a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=4 ">4</a>
					<a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=5 ">5</a>
					<a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=6 ">
						<svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></a><a href="?select_key=&amp;input_key=&amp;Scod=BRD20&amp;pCode=529&amp;btap=&amp;page=12 "><svg class="svg-inline--fa fa-angle-double-right fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-double-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34zm192-34l-136-136c-9.4-9.4-24.6-9.4-33.9 0l-22.6 22.6c-9.4 9.4-9.4 24.6 0 33.9l96.4 96.4-96.4 96.4c-9.4 9.4-9.4 24.6 0 33.9l22.6 22.6c9.4 9.4 24.6 9.4 33.9 0l136-136c9.4-9.2 9.4-24.4 0-33.8z"></path></svg><!-- <i class="fas fa-angle-double-right"></i> -->
					</a>
				</div>
			</div><!-- 페이징 끝 -->
			
			<script>
			// 썸네일 리스트 클릭했을경우 큰 사진으로 이동
			$('.before-after-thumb li.item').click(function(e){
			  e.preventDefault();
			  var target = $('.before-after');
			  if(target.length){
			    var scrollTo = target.offset().top - 100;
			    $('body, html').animate({scrollTop: scrollTo+'px'}, 300);
			  }
			});
			</script>
			
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


