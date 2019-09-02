
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
			<div id="sub-visual" data-menu="">
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
							<button>멤버쉽 ▼</button>

						</li>
						<li class="gnb">
							<button>개인정보취급방침 ▼</button>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<div class="board-titl">
				<h5>개인정보취급방침</h5>
			</div>
			
			<div class="sub-contents privacy">
				<div class="inner">
					개인정보의 수집범위<br>
					<br>
					다니엘성형외과의원은(는) 별도의 회원가입 절차 없이 대부분의 콘텐츠에 자유롭게 접근할 수 있습니다. 다니엘성형외과의원의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.<br>
					<br>
					1) 회원 가입시 수집하는 개인정보의 범위<br>
					<br>
					- 필수항목 : 희망 ID, 비밀번호, 이름, 닉네임<br>
					<br>
					- 선택항목 : 이메일주소, 이메일 수신 여부, SMS 수신여부, 정보공개여부, 휴대폰번호<br>
					<br>
					개인정보의 수집 및 이용 목적<br>
					<br>
					① 다니엘성형외과의원은(는) 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공하기 위하여 다음과 같은 목적으로 개인정보를 수집하고 있습니다.<br>
					<br>
					- 이름, 아이디, 비밀번호, 닉네임 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용<br>
					<br>
					- 이메일주소, 이메일 수신여부, SMS 수신여부, 휴대폰 번호: 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보의 안내<br>
					<br>
					- 주소: 경품과 쇼핑 물품 배송에 대한 정확한 배송지의 확보<br>
					<br>
					- 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료<br>
					<br>
					② 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.<br>
					<br>
					개인정보의 보유기간 및 이용기간<br>
					<br>
					① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.<br>
					<br>
					- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.<br>
					<br>
					- 계약 또는 청약철회 등에 관한 기록 : 5년<br>
					<br>
					- 대금결제 및 재화등의 공급에 관한 기록 : 5년<br>
					<br>
					- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br>
					<br>
					② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 다니엘성형외과의원은(는) 지체없이 그 열람,확인 할 수 있도록 조치합니다 <br>
					<br>
					필수 개인정보 수집을 동의하지 않는 경우<br>
					<br>
					① 귀하의 개인정보 수집을 거부할 수 있는 권리가 있으며 이 경우 당사의 회원전용 서비스 또는 고객 문의사항에 대한 답변이 필수인 코너를 이용하는데 있어 회원 가입 또는 게시물 등록이 불가능 할 수 있습니다.<br>
					<br>
					② 필수 정보가 아닌 선택 정보의 경우 개인정보 수집에 동의하지 않을 수 있으며 서비스 이용에 제한은 없습니다.<!--
					<div>&#39;바람K성형외과&#39;는 (이하 &#39;본원&#39;은) 고객님의 개인정보를 중요시하며, 「개인정보보호법」을 준수하고 있습니다.</div>
					
					<div>본원은 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 수집하는 개인정보 항목</div>
					
					<div>본원은 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</div>
					
					<div>&omicron; 수집항목 : 이름 , 로그인ID , 비밀번호 , 주소 , 휴대전화번호 , 이메일 등</div>
					
					<div>&omicron; 개인정보 수집방법 : 홈페이지(회원가입, 상담게시판, 온라인예약 등)</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 개인정보의 수집 및 이용목적</div>
					
					<div>본원은 수집한 개인정보를 다음의 목적을 위해 활용합니다.</div>
					
					<div>&omicron; 서비스 제공에 관한 계약 이행</div>
					
					<div>&omicron; 회원 관리</div>
					
					<div>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인, 불만처리 등 민원처리 , 고지사항 전달</div>
					
					<div>&omicron; 마케팅 및 광고에 활용</div>
					
					<div>이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</div>
					
					<div>&omicron; 휴대폰번호는 나이스평가정보에서 인증 받은 휴대폰 번호를 사용 하고 있습니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 개인정보의 보유 및 이용기간</div>
					
					<div>본원은 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 개인정보의 파기절차 및 방법</div>
					
					<div>본원은 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</div>
					
					<div>&omicron; 파기절차</div>
					
					<div>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.</div>
					
					<div>별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.</div>
					
					<div>&nbsp;</div>
					
					<div>&omicron; 파기방법</div>
					
					<div>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</div>
					
					<div>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 수집한 개인정보의 위탁</div>
					
					<div>본원은 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</div>
					
					<div>&nbsp;</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 이용자의 권리와 그 행사방법</div>
					
					<div>이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다. (단, 만 14세 미만의 아동은 가입이 제한됩니다)</div>
					
					<div>이용자의 개인정보 조회, 수정을 위해서는 &lsquo;개인정보변경&rsquo;(또는 &lsquo;회원정보수정&rsquo; 등)을 가입해지(동의철회)를 위해서는 &ldquo;회원탈퇴&rdquo;를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.</div>
					
					<div>귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.</div>
					
					<div>본원은 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 &ldquo;본원이 수집하는 개인정보의 보유 및 이용기간&rdquo;에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</div>
					
					<div>쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다.</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 개인정보에 관한 민원서비스</div>
					
					<div>본원은 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</div>
					
					<div>- 개인정보책임관리자 : 강상윤</div>
					
					<div>- 문의전화 : 051.731. 7577</div>
					
					<div>&nbsp;</div>
					
					<div>귀하께서는 병원의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 개인정보실무책임자로 신고하실 수 있습니다. 병원는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</div>
					
					<div>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</div>
					
					<div>1.개인분쟁조정위원회 (www.1336.or.kr/1336)</div>
					
					<div>2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</div>
					
					<div>3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</div>
					
					<div>4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</div>
					
					<div>&nbsp;</div>
					
					<div>❑ 환자의 권리와 의무(제1조의2 제1항 관련)</div>
					
					<div>&nbsp;</div>
					
					<div>&nbsp;</div>
					
					<div>1. 환자의 권리</div>
					
					<div>&nbsp;</div>
					
					<div>가. 진료 받을 권리</div>
					
					<div>환자는 자신의 건강보호를 위해 적절한 보건의료서비스를 받고, 성별 나이&middot;종교&middot;신분&middot;경제적 사정등을</div>
					
					<div>이유로 이를 침해받지 아니하며, 의료인은 정당한 사유없이 진료를 거부하지 못한다.</div>
					
					<div>&nbsp;</div>
					
					<div>나. 알 권리 및 자기결정권</div>
					
					<div>환자는 자신의 건강보호를 위해 적절한 보건의료서비스를 받고, 성별 나이&middot;종교&middot;신분&middot;경제적 사정등을</div>
					
					<div>이유로 이를 침해받지 아니하며, 의료인은 정당한 사유없이 진료를 거부하지 못한다.</div>
					
					<div>&nbsp;</div>
					
					<div>다. 비밀을 보호받을 권리</div>
					
					<div>환자는 진료와 관련된 신체상&middot;건강상 비밀을 보호받으며, 의료인과 의료기관은 환자의 동의를 받지 않거나</div>
					
					<div>범죄수사 등 법률이 정한 경우 외에는 비밀을 누설&middot;발표하지 못한다.</div>
					
					<div>&nbsp;</div>
					
					<div>라. 피해를 구제받을 권리</div>
					
					<div>환자는 권리를 침해 받아 생명&middot;신체적&middot;금전적 피해가 발생한 경우,</div>
					
					<div>한국의료분쟁조정중재원(02-6210-0114, www.k-medi.or.kr)에 상담 및 구제 신청을 할 수 있다.</div>
					
					<div>&nbsp;</div>
					
					<div>&nbsp;</div>
					
					<div>2. 환자의 의무</div>
					
					<div>&nbsp;</div>
					
					<div>가. 의료인에 대한 신뢰&middot;존중 의무</div>
					
					<div>환자는 자신의 건강관련 정보를 의료인에게 정확히 알리고, 의료인의 치료 계획에 대해 신뢰하고 존중하여야 한다.</div>
					
					<div>&nbsp;</div>
					
					<div>나. 부정한 방법으로 진료를 받지 않을 의무</div>
					
					<div>환자는 진료 전에 본인의 신분을 밝혀야하고, 타인의 명의로 진료를 받는 등 거짓이나 부정한 방법으로 진료를 받지 아니한다.</div>
					
					<div>&nbsp;</div>
					
					<div>&nbsp;</div>
					
					<div>부칙</div>
					
					<div>이 약관은 2017년 2월 15일 시행합니다.</div>-->
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


