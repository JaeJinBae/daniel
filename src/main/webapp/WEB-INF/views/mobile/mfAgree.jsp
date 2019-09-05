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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/style.sub.css"><!-- @ 서브페이지 스타일 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/m/style.board.css"><!-- @ 게시판 스타일 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.css"><!-- @ 파일첨부 스타일 -->
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
	
	<div id="wrap">
		<!-- 해더 시작  -->
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
		<!-- 해더 끝  -->
	
		<!-- 콘텐츠 영역 시작 (메인일 경우 #main-container / 서브일 경우 #sub-container) -->
		<section id="sub-container">
		<!--  닫기 [위치 : include_web_footer.html ]  -->
		
			<!-- BreadCrumb 시작 -->
			<div id="breadcrumb">
				<div class="full">
					<ul>
						<li class="gnb">
							<button>멤버쉽 ▼</button>
							<jsp:include page="../include/mBreadCrumb.jsp"></jsp:include>
						</li>
						<li class="gnb">
							<button>이용약관 ▼</button>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<!-- 서브 비주얼영역 시작 (이전, 다음페이지로 이동) -->
			<div id="sub-visual" data-sec="멤버쉽" data-menu="약관동의">
				<div class="inner">
			
				</div>
			</div>
			<!-- 서브 비주얼영역 끝 -->
			
			<!-- 게시판 타이틀 시작 -->
			<div class="board-title">
				<h5>이용약관</h5>
			</div>
			<!-- 게시판 타이틀 끝 -->
			
			<div class="sub-contents agree">
				<div class="inner">
					제1장 총칙<br>
					<br>
					제1조 [목적]<br>
					<br>
					이 약관은 다니엘성형외과의원이(가) 온라인으로 제공하는 디지털콘텐츠(이하 “콘텐츠”라고 한다) 및 제반서비스의 이용과 관련하여 다니엘성형외과의원과와(과) 이용자와의 권리, 의무 및 책임사항 등을 규정함을 목적으로 합니다.<br>
					<br>
					 <br>
					<br>
					제2조 [정의]<br>
					<br>
					이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
					<br>
					1. “다니엘성형외과의원”(이)라 함은 “콘텐츠” 산업과 관련된 경제활동을 영위하는 자로서 콘텐츠 및 제반서비스를 제공하는 자를 말합니다.<br>
					<br>
					2. “이용자”라 함은 “다니엘성형외과의원”의 사이트에 접속하여 이 약관에 따라 “다니엘성형외과의원”이(가) 제공하는 “콘텐츠” 및 제반서비스를 이용하는 회원 및 비회원을 말합니다.<br>
					<br>
					3. “회원”이라 함은 “다니엘성형외과의원”와(과) 이용계약을 체결하고 “이용자” 아이디(ID)를 부여받은 “이용자”로서 “다니엘성형외과의원”의 정보를 지속적으로 제공받으며 “다니엘성형외과의원”이(가) 제공하는 서비스를 지속적으로 이용할 수 있는 자를 말합니다.<br>
					<br>
					4. “비회원”이라 함은 “회원”이 아니면서 “다니엘성형외과의원”이(가) 제공하는 서비스를 이용하는 자를 말합니다.<br>
					<br>
					5. “콘텐츠”라 함은 정보통신망이용촉진 및 정보보호 등에 관한 법률 제2조 제1항 제1호의 규정에 의한 정보통신망에서 사용되는 부호·문자·음성·음향·이미지 또는 영상 등으로 표현된 자료 또는 정보로서, 그 보존 및 이용에 있어서 효용을 높일 수 있도록 전자적 형태로 제작 또는 처리된 것을 말합니다.<br>
					<br>
					6. “아이디(ID)”라 함은 “회원”의 식별과 서비스이용을 위하여 “회원”이 정하고 “다니엘성형외과의원”이(가) 승인하는 문자 또는 숫자의 조합을 말합니다.<br>
					<br>
					7. “비밀번호(PASSWORD)”라 함은 “회원”이 부여받은 “아이디”와 일치되는 “회원”임을 확인하고 비밀보호를 위해 “회원” 자신이 정한 문자 또는 숫자의 조합을 말합니다.<br>
					<br>
					 <br>
					<br>
					제3조 [신원정보 등의 제공]<br>
					<br>
					“다니엘성형외과의원”은(는) 이 약관의 내용, 상호, 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자등록번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 온라인 서비스초기화면에 게시합니다. 다만, 약관은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>
					<br>
					 <br>
					<br>
					제4조 [약관의 게시 등]<br>
					<br>
					① “다니엘성형외과의원”은(는) 이 약관을 “회원”이 그 전부를 인쇄할 수 있고 거래과정에서 해당 약관의 내용을 확인할 수 있도록 기술적 조치를 취합니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) “이용자”가 “다니엘성형외과의원”와(과) 이 약관의 내용에 관하여 질의 및 응답할 수 있도록 기술적 장치를 설치합니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) “이용자”가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 환불조건 등과 같은 중요한 내용을 이용자가 쉽게 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 “이용자”의 확인을 구합니다.<br>
					<br>
					 <br>
					<br>
					제5조 [약관의 개정 등]<br>
					<br>
					① “다니엘성형외과의원”은(는) 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
					<br>
					② “다니엘성형외과의원”이(가) 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 서비스초기화면에 그 적용일자 7일 이전부터 적용일 후 상당한 기간동안 공지합니다.<br>
					<br>
					③ “다니엘성형외과의원”이(가) 약관을 개정할 경우에는 개정약관 공지 후 개정약관의 적용에 대한 “이용자”의 동의 여부를 확인합니다. “이용자”가 개정약관의 적용에 동의하지 않는 경우 “다니엘성형외과의원” 또는 “이용자”는 콘텐츠 이용계약을 해지할 수 있습니다. 이때, “다니엘성형외과의원”은(는) 계약해지로 인하여 “이용자”가 입은 손해를 배상합니다.<br>
					<br>
					제6조 [약관의 해석]<br>
					<br>
					이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 정보통신부장관이 정하는 디지털콘텐츠이용자보호지침, 기타 관계법령 또는 상관례에 따릅니다.<br>
					<br>
					제2장 회원가입<br>
					<br>
					제7조 [회원가입]<br>
					<br>
					① 회원가입은 “이용자”가 약관의 내용에 대하여 동의를 하고 회원가입신청을 한 후 “다니엘성형외과의원”이(가) 이러한 신청에 대하여 승낙함으로써 체결됩니다.<br>
					<br>
					② 회원가입신청서에는 다음 사항을 기재해야 합니다. 1호 내지 3호의 사항은 필수사항이며, 그 외의 사항은 선택사항입니다.<br>
					<br>
					1. “회원”의 성명 또는 인터넷상 개인식별번호<br>
					<br>
					2. “아이디”와 “비밀번호”<br>
					<br>
					3. 전자우편주소<br>
					<br>
					4. 이용하려는 “콘텐츠”의 종류<br>
					<br>
					5. 기타 “다니엘성형외과의원”이(가) 필요하다고 인정하는 사항<br>
					<br>
					③ “다니엘성형외과의원”은(는) 상기 “이용자”의 신청에 대하여 회원가입을 승낙함을 원칙으로 합니다. 다만, “다니엘성형외과의원”은(는) 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않을 수 있습니다.<br>
					<br>
					1. 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우<br>
					<br>
					2. 실명이 아니거나 타인의 명의를 이용한 경우<br>
					<br>
					3. 허위의 정보를 기재하거나, 다니엘성형외과의원가이(가) 제시하는 내용을 기재하지 않은 경우<br>
					<br>
					4. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우<br>
					<br>
					④ “다니엘성형외과의원”은(는) 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.<br>
					<br>
					⑤ 제3항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, “다니엘성형외과의원”은(는) 이를 신청자에게 알려야 합니다. “다니엘성형외과의원”의 귀책사유 없이 신청자에게 통지할 수 없는 경우에는 예외로 합니다.<br>
					<br>
					⑥ 회원가입계약의 성립 시기는 “다니엘성형외과의원”의 승낙이 “이용자”에게 도달한 시점으로 합니다.<br>
					<br>
					제8조 [미성년자의 회원가입에 관한 특칙]<br>
					<br>
					① 만 14세 미만의 “이용자”는 개인정보의 수집 및 이용목적에 대하여 충분히 숙지하고 부모 등 법정대리인의 동의를 얻은 후에 회원가입을 신청하고 본인의 개인정보를 제공하여야 합니다.<br>
					<br>
					② 다니엘성형외과의원는은(는) 부모 등 법정대리인의 동의에 대한 확인절차를 거치지 않은 14세 미만 이용자에 대하여는 가입을 취소 또는 불허합니다.<br>
					<br>
					③ 만 14세 미만 “이용자”의 부모 등 법정대리인은 아동에 대한 개인정보의 열람, 정정, 갱신을 요청하거나 회원가입에 대한 동의를 철회할 수 있으며, 이러한 경우에 “다니엘성형외과의원”은(는) 지체 없이 필요한 조치를 취해야 합니다.<br>
					<br>
					제9조 [회원정보의 변경]<br>
					<br>
					① “회원”은 개인정보관리화면을 통하여 언제든지 자신의 개인정보를 열람하고 수정할 수 있습니다.<br>
					<br>
					② “회원”은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 “다니엘성형외과의원”에 대하여 그 변경사항을 알려야 합니다.<br>
					<br>
					③ 제2항의 변경사항을 “다니엘성형외과의원”에 알리지 않아 발생한 불이익에 대하여 “다니엘성형외과의원”은(는) 책임지지 않습니다.<br>
					<br>
					제10조 [“회원”의 “아이디” 및 “비밀번호”의 관리에 대한 의무]<br>
					<br>
					① “회원”의 “아이디”와 “비밀번호”에 관한 관리책임은 “회원”에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.<br>
					<br>
					② “회원”은 “아이디” 및 “비밀번호”가 도용되거나 제3자에 의해 사용되고 있음을 인지한 경우에는 이를 즉시 “다니엘성형외과의원”에 통지하고 “다니엘성형외과의원”의 안내에 따라야 합니다.<br>
					<br>
					③ 제2항의 경우에 해당 “회원”이 “다니엘성형외과의원”에 그 사실을 통지하지 않거나, 통지한 경우에도 “다니엘성형외과의원”의 안내에 따르지 않아 발생한 불이익에 대하여 “다니엘성형외과의원”은(는) 책임지지 않습니다.<br>
					<br>
					제11조 [“회원”에 대한 통지]<br>
					<br>
					① “다니엘성형외과의원”이(가) “회원”에 대한 통지를 하는 경우 “회원”이 지정한 전자우편주소로 할 수 있습니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) “회원” 전체에 대한 통지의 경우 7일 이상 “다니엘성형외과의원”의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, “회원” 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 제1항의 통지를 합니다.<br>
					<br>
					제12조 [회원탈퇴 및 자격 상실 등]<br>
					<br>
					① “회원”은 “다니엘성형외과의원”에 언제든지 탈퇴를 요청할 수 있으며 “다니엘성형외과의원”은(는) 즉시 회원탈퇴를 처리합니다.<br>
					<br>
					② “회원”이 다음 각호의 사유에 해당하는 경우, “다니엘성형외과의원”은(는) 회원자격을 제한 및 정지시킬 수 있습니다.<br>
					<br>
					1. 가입신청 시에 허위내용을 등록한 경우<br>
					<br>
					2. “다니엘성형외과의원”의 서비스이용대금, 기타 “다니엘성형외과의원”의 서비스이용에 관련하여 회원이 부담하는 채무를 기일에 이행하지 않는 경우<br>
					<br>
					3. 다른 사람의 “다니엘성형외과의원”의 서비스이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br>
					<br>
					4. “다니엘성형외과의원”을(를) 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br>
					<br>
					③ “다니엘성형외과의원”이(가) 회원자격을 제한·정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우<br>
					<br>
					“다니엘성형외과의원”은(는) 회원자격을 상실시킬 수 있습니다.<br>
					<br>
					④ “다니엘성형외과의원”이(가) 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 “회원”에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br>
					<br>
					제3장 콘텐츠이용계약<br>
					<br>
					제13조 [“콘텐츠”의 내용 등의 게시]<br>
					<br>
					① “다니엘성형외과의원”은(는) 다음 사항을 해당 “콘텐츠”의 이용초기화면이나 그 포장에 “이용자”가 알기 쉽게 표시합니다.<br>
					<br>
					1. “콘텐츠”의 명칭 또는 제호<br>
					<br>
					2. “콘텐츠”의 제작 및 표시 연월일<br>
					<br>
					3. “콘텐츠” 제작자의 성명(법인인 경우에는 법인의 명칭), 주소, 전화번호<br>
					<br>
					4. “콘텐츠”의 내용, 이용방법, 이용료 기타 이용조건<br>
					<br>
					② “다니엘성형외과의원”은(는) “콘텐츠”별 이용가능기기 및 이용에 필요한 최소한의 기술사양에 관한 정보를 계약체결과정에서 “이용자”에게 제공합니다.<br>
					<br>
					제14조 [이용계약의 성립 등]<br>
					<br>
					① “이용자”는 “다니엘성형외과의원”이(가) 제공하는 다음 또는 이와 유사한 절차에 의하여 이용신청을 합니다. “다니엘성형외과의원”은(는) 계약 체결 전에 각 호의 사항에 관하여 “이용자”가 정확하게 이해하고 실수 또는 착오 없이 거래할 수 있도록 정보를 제공합니다.<br>
					<br>
					1. “콘텐츠” 목록의 열람 및 선택<br>
					<br>
					2. 성명, 주소, 전화번호(또는 이동전화번호), 전자우편주소 등의 입력<br>
					<br>
					3. 약관내용, 청약철회가 불가능한 “콘텐츠”에 대해 “다니엘성형외과의원”이(가) 취한 조치에 관련한 내용에 대한 확인<br>
					<br>
					4. 이 약관에 동의하고 위 제3호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>
					<br>
					5. “콘텐츠”의 이용신청에 관한 확인 또는 “다니엘성형외과의원”의 확인에 대한 동의<br>
					<br>
					6. 결제방법의 선택<br>
					<br>
					② “다니엘성형외과의원”은(는) “이용자”의 이용신청이 다음 각 호에 해당하는 경우에는 승낙하지 않거나 승낙을 유보할 수 있습니다.<br>
					<br>
					1. 실명이 아니거나 타인의 명의를 이용한 경우<br>
					<br>
					2. 허위의 정보를 기재하거나, “다니엘성형외과의원”이(가) 제시하는 내용을 기재하지 않은 경우<br>
					<br>
					3. 미성년자가 청소년보호법에 의해서 이용이 금지되는 “콘텐츠”를 이용하고자 하는 경우<br>
					<br>
					4. 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우<br>
					<br>
					③ “다니엘성형외과의원”의 승낙이 제16조 제1항의 수신확인통지형태로 “이용자”에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>
					<br>
					④ “다니엘성형외과의원”의 승낙의 의사표시에는 “이용자”의 이용신청에 대한 확인 및 서비스제공 가능여부, 이용신청의 정정·취소 등에 관한 정보 등을 포함합니다.<br>
					<br>
					제15조 [미성년자 이용계약에 관한 특칙]<br>
					<br>
					“다니엘성형외과의원”은(는) 만 20세 미만의 미성년이용자가 유료서비스를 이용하고자 하는 경우에 부모 등 법정 대리인의 동의를 얻거나, 계약체결 후 추인을 얻지 않으면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있다는 내용을 계약체결 전에 고지하는 조치를 취합니다.<br>
					<br>
					제16조 [수신확인통지·이용신청 변경 및 취소]<br>
					<br>
					① “다니엘성형외과의원”은(는) “이용자”의 이용신청이 있는 경우 “이용자”에게 수신확인통지를 합니다.<br>
					<br>
					② 수신확인통지를 받은 “이용자”는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 이용신청 변경 및 취소를 요청할 수 있고, “다니엘성형외과의원”은(는) 서비스제공 전에 “이용자”의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 청약철회 등에 관한 제27조의 규정에 따릅니다.<br>
					<br>
					제17조 [“다니엘성형외과의원”의 의무]<br>
					<br>
					① “다니엘성형외과의원”은(는) 법령과 이 약관이 정하는 권리의 행사와 의무의 이행을 신의에 쫓아 성실하게 하여야 합니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) “이용자”가 안전하게 “콘텐츠”를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보보호정책을 공시하고 준수합니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) “이용자”가 콘텐츠이용 및 그 대금내역을 수시로 확인할 수 있도록 조치합니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 콘텐츠이용과 관련하여 “이용자”로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 지체없이 처리합니다. 이용자가 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 그 처리과정 및 결과를 전달합니다.<br>
					<br>
					⑤ “다니엘성형외과의원”은(는) 이 약관에서 정한 의무 위반으로 인하여 “이용자”가 입은 손해를 배상합니다.<br>
					<br>
					제18조 [“이용자”의 의무]<br>
					<br>
					① “이용자”는 다음 행위를 하여서는 안 됩니다.<br>
					<br>
					1. 신청 또는 변경 시 허위내용의 기재<br>
					<br>
					2. 타인의 정보도용<br>
					<br>
					3. “다니엘성형외과의원”에 게시된 정보의 변경<br>
					<br>
					4. “다니엘성형외과의원”이(가) 금지한 정보(컴퓨터 프로그램 등)의 송신 또는 게시<br>
					<br>
					5. “다니엘성형외과의원”와(과) 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
					<br>
					6. “다니엘성형외과의원” 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
					<br>
					7. 외설 또는 폭력적인 말이나 글, 화상, 음향, 기타 공서양속에 반하는 정보를 “다니엘성형외과의원”의 사이트에 공개 또는 게시하는 행위<br>
					<br>
					8. 기타 불법적이거나 부당한 행위<br>
					<br>
					② “이용자”는 관계법령, 이 약관의 규정, 이용안내 및 “콘텐츠”와 관련하여 공지한 주의사항, “다니엘성형외과의원”이(가) 통지하는 사항 등을 준수하여야 하며, 기타 “다니엘성형외과의원”의 업무에 방해되는 행위를 하여서는 안 됩니다.<br>
					<br>
					제19조 [지급방법]<br>
					<br>
					“콘텐츠”의 이용에 대한 대금지급방법은 다음 각 호의 방법 중 가능한 방법으로 할 수 있습니다. 다만, “다니엘성형외과의원”은(는) “이용자”의 지급방법에 대하여 어떠한 명목의 수수료도 추가하여 징수하지 않습니다.<br>
					<br>
					1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br>
					<br>
					2. 선불카드, 직불카드, 신용카드 등의 각종 카드결제<br>
					<br>
					3. 온라인무통장입금<br>
					<br>
					4. 전자화폐에 의한 결제<br>
					<br>
					5. 마일리지 등 “다니엘성형외과의원”이(가) 지급한 포인트에 의한 결제<br>
					<br>
					6. “다니엘성형외과의원”와(과) 계약을 맺었거나 “다니엘성형외과의원”이(가) 인정한 상품권에 의한 결제<br>
					<br>
					7. 전화 또는 휴대전화를 이용한 결제<br>
					<br>
					8. 기타 전자적 지급방법에 의한 대금지급 등<br>
					<br>
					제20조 [콘텐츠서비스의 제공 및 중단]<br>
					<br>
					① 콘텐츠서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 콘텐츠서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 “다니엘성형외과의원”은(는) 제11조[“회원”에 대한 통지]에 정한 방법으로 “이용자”에게 통지합니다. 다만, “다니엘성형외과의원”이(가) 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) 상당한 이유 없이 콘텐츠서비스의 제공이 일시적으로 중단됨으로 인하여 “이용자”가 입은 손해에 대하여 배상합니다. 다만, “다니엘성형외과의원”이(가) 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 콘텐츠서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.<br>
					<br>
					⑤ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 콘텐츠서비스를 제공할 수 없게 되는 경우에는 “다니엘성형외과의원”은(는) 제11조[“회원”에 대한 통지]에 정한 방법으로 “이용자”에게 통지하고 당초 “다니엘성형외과의원”에서 제시한 조건에 따라 “이용자”에게 보상합니다. 다만, “다니엘성형외과의원”이(가) 보상기준 등을 고지하지 아니하거나, 고지한 보상기준이 적절하지 않은 경우에는 “이용자”들의 마일리지 또는 적립금 등을 현물 또는 현금으로 “이용자”에게 지급합니다.<br>
					<br>
					제21조 [콘텐츠서비스의 변경]<br>
					<br>
					① “다니엘성형외과의원”은(는) 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 콘텐츠서비스를 변경할 수 있습니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) 콘텐츠서비스의 내용, 이용방법, 이용시간을 변경할 경우에 변경사유, 변경될 콘텐츠서비스의 내용 및 제공일자 등을 그 변경 전 7일 이상 해당 콘텐츠초기화면에 게시합니다.<br>
					<br>
					③ 제2항의 경우에 변경된 내용이 중대하거나 “이용자”에게 불리한 경우에는 “다니엘성형외과의원”이(가) 해당 콘텐츠서비스를 제공받는 “이용자”에게 제11조[“회원”에 대한 통지]에 정한 방법으로 통지하고 동의를 받습니다. 이때, “다니엘성형외과의원”은(는) 동의를 거절한 “이용자”에 대하여는 변경전 서비스를 제공합니다. 다만, 그러한 서비스 제공이 불가능할 경우 계약을 해지할 수 있습니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 제1항에 의한 서비스의 변경 및 제3항에 의한 계약의 해지로 인하여 “이용자”가 입은 손해를 배상합니다.<br>
					<br>
					제22조 [정보의 제공 및 광고의 게재]<br>
					<br>
					① “다니엘성형외과의원”은(는) “이용자”가 콘텐츠이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 “회원”에게 제공할 수 있습니다. 다만, “회원”은 언제든지 전자우편 등을 통하여 수신 거절을 할 수 있습니다.<br>
					<br>
					② 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 “회원”의 사전 동의를 받아서 전송합니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) “콘텐츠”서비스 제공과 관련하여 콘텐츠화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 “회원”은 수신거절을 “다니엘성형외과의원”에게 할 수 있습니다.<br>
					<br>
					제23조 [게시물의 삭제]<br>
					<br>
					① “다니엘성형외과의원”은(는) 게시판에 정보통신망이용촉진 및 정보보호 등에 관한 법률을 위반한 청소년유해매체물이 게시되어 있는 경우에는 이를 지체 없이 삭제 합니다. 다만, 19세 이상의 “이용자”만 이용할 수 있는 게시판은 예외로 합니다.<br>
					<br>
					② “다니엘성형외과의원”이(가) 운영하는 게시판 등에 게시된 정보로 인하여 법률상 이익이 침해된 자는 “다니엘성형외과의원”에게 당해 정보의 삭제 또는 반박내용의 게재를 요청할 수 있습니다. 이 경우 “다니엘성형외과의원”은(는) 지체 없이 필요한 조치를 취하고 이를 즉시 신청인에게 통지합니다.<br>
					<br>
					제24조 [저작권 등의 귀속]<br>
					<br>
					① “다니엘성형외과의원”이(가) 작성한 저작물에 대한 저작권 기타 지적재산권은 “다니엘성형외과의원”에 귀속합니다.<br>
					<br>
					② “다니엘성형외과의원”이(가) 제공하는 서비스 중 제휴계약에 의해 제공되는 저작물에 대한 저작권 기타 지적재산권은 해당 제공업체에 귀속합니다.<br>
					<br>
					③ “이용자”는 “다니엘성형외과의원”이(가) 제공하는 서비스를 이용함으로써 얻은 정보 중 “다니엘성형외과의원” 또는 제공업체에 지적재산권이 귀속된 정보를 “다니엘성형외과의원” 또는 제공업체의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 약정에 따라 “이용자”의 저작물을 사용하는 경우 당해 “이용자”의 허락을 받습니다.<br>
					<br>
					제25조 [개인정보보호]<br>
					<br>
					① “다니엘성형외과의원”은(는) 제7조 제2항의 신청서기재사항 이외에 “이용자”의 콘텐츠이용에 필요한 최소한의 정보를 수집할 수 있습니다. 이를 위해 “다니엘성형외과의원”이(가) 문의한 사항에 관해 “이용자”는 진실한 내용을 성실하게 고지하여야 합니다.<br>
					<br>
					② “다니엘성형외과의원”이(가) “이용자”의 개인 식별이 가능한 “개인정보”를 수집하는 때에는 당해 “이용자”의 동의를 받습니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) “이용자”가 이용신청 등에서 제공한 정보와 제1항에 의하여 수집한 정보를 당해 “이용자”의 동의 없이 목적 외로 이용하거나 제3자에게 제공할 수 없으며, 이를 위반한 경우에 모든 책임은 “다니엘성형외과의원”이(가) 집니다. 다만, 다음의 경우에는 예외로 합니다.<br>
					<br>
					1. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br>
					<br>
					2. “콘텐츠” 제공에 따른 요금정산을 위하여 필요한 경우<br>
					<br>
					3. 도용방지를 위하여 본인확인에 필요한 경우<br>
					<br>
					4. 약관의 규정 또는 법령에 의하여 필요한 불가피한 사유가 있는 경우<br>
					<br>
					④ “다니엘성형외과의원”이(가) 제2항과 제3항에 의해 “이용자”의 동의를 받아야 하는 경우에는 “개인정보”관리책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공관련사항(제공받는 자, 제공목적 및 제공할 정보의 내용)등에 관하여 정보통신망이용촉진 및 정보보호 등에 관한 법률 제22조 제2항이 규정한 사항을 명시하고 고지하여야 합니다.<br>
					<br>
					⑤ “이용자”는 언제든지 제3항의 동의를 임의로 철회할 수 있습니다.<br>
					<br>
					⑥ “이용자”는 언제든지 “다니엘성형외과의원”이(가) 가지고 있는 자신의 “개인정보”에 대해 열람 및 오류의 정정을 요구할 수 있으며, “다니엘성형외과의원”은(는) 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. “이용자”가 오류의 정정을 요구한 경우에는 “다니엘성형외과의원”은(는) 그 오류를 정정할 때까지 당해 “개인정보”를 이용하지 않습니다.<br>
					<br>
					⑦ “다니엘성형외과의원”은(는) 개인정보보호를 위하여 관리자를 한정하여 그 수를 최소화하며, 신용카드, 은행계좌 등을 포함한 “이용자”의 “개인정보”의 분실, 도난, 유출, 변조 등으로 인한 “이용자”의 손해에 대하여 책임을 집니다.<br>
					<br>
					⑧ “다니엘성형외과의원” 또는 그로부터 “개인정보”를 제공받은 자는 “이용자”가 동의한 범위 내에서 “개인정보”를 사용할 수 있으며, 목적이 달성된 경우에는 당해 “개인정보”를 지체 없이 파기합니다.<br>
					<br>
					⑨ “다니엘성형외과의원”은(는) 정보통신망이용촉진 및 정보보호에 관한 법률 등 관계 법령이 정하는 바에 따라 “이용자”의 “개인정보”를 보호하기 위해 노력합니다. “개인정보”의 보호 및 사용에 대해서는 관련법령 및 “다니엘성형외과의원”의 개인정보보호정책이 적용됩니다.<br>
					<br>
					제4장 콘텐츠이용계약의 청약철회, 계약해제·해지 및 이용제한<br>
					<br>
					제26조 [“이용자”의 청약철회와 계약해제·해지]<br>
					<br>
					① “다니엘성형외과의원”와(과) “콘텐츠”의 이용에 관한 계약을 체결한 “이용자”는 수신확인의 통지를 받은 날로부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, “다니엘성형외과의원”이(가) 다음 각 호중 하나의 조치를 취한 경우에는 “이용자”의 청약철회권이 제한될 수 있습니다.<br>
					<br>
					1. 청약의 철회가 불가능한 “콘텐츠”에 대한 사실을 표시사항에 포함한 경우<br>
					<br>
					2. 시용상품을 제공한 경우<br>
					<br>
					3. 한시적 또는 일부이용 등의 방법을 제공한 경우<br>
					<br>
					② “이용자”는 다음 각 호의 사유가 있을 때에는 당해 “콘텐츠”를 공급받은 날로부터 3월 이내 또는 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 콘텐츠이용계약을 해제·해지할 수 있습니다.<br>
					<br>
					1. 이용계약에서 약정한 “콘텐츠”가 제공되지 않는 경우<br>
					<br>
					2. 제공되는 “콘텐츠”가 표시·광고 등과 상이하거나 현저한 차이가 있는 경우<br>
					<br>
					3. 기타 “콘텐츠”의 결함으로 정상적인 이용이 현저히 불가능한 경우<br>
					<br>
					③ 제1항의 청약철회와 제2항의 계약해제·해지는 “이용자”가 전화, 전자우편 또는 모사전송으로 “다니엘성형외과의원”에 그 의사를 표시한 때에 효력이 발생합니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 제3항에 따라 “이용자”가 표시한 청약철회 또는 계약해제·해지의 의사표시를 수신한 후 지체 없이 이러한 사실을 “이용자”에게 회신합니다.<br>
					<br>
					⑤ “이용자”는 제2항의 사유로 계약해제·해지의 의사표시를 하기 전에 상당한 기간을 정하여 완전한 “콘텐츠” 혹은 서비스이용의 하자에 대한 치유를 요구할 수 있습니다.<br>
					<br>
					제27조 [“이용자”의 청약철회와 계약해제·해지의 효과]<br>
					<br>
					① “다니엘성형외과의원”은(는) “이용자”가 청약철회의 의사표시를 한 날로부터 또는 “이용자”에게 계약해제·해지의 의사표시에 대하여 회신한 날로부터 3영업일 이내에 대금의 결제와 동일한 방법으로 이를 환급하여야 하며, 동일한 방법으로 환불이 불가능할 때에는 이를 사전에 고지하여야 합니다. 이 경우 “다니엘성형외과의원”이(가) “이용자”에게 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br>
					<br>
					② “다니엘성형외과의원”이(가) 제1항에 따라 환급할 경우에 “이용자”가 서비스이용으로부터 얻은 이익에 해당하는 금액을 공제하고 환급할 수 있습니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) 위 대금을 환급함에 있어서 “이용자”가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. 다만, 제2항의 금액공제가 필요한 경우에는 그러하지 아니할 수 있습니다.<br>
					<br>
					④ “다니엘성형외과의원”, “콘텐츠 등의 대금을 지급 받은 자” 또는 “이용자와 콘텐츠이용계약을 체결한 자“가 동일인이 아닌 경우에 각자는 청약철회 또는 계약해제·해지로 인한 대금환급과 관련한 의무의 이행에 있어서 연대하여 책임을 집니다.<br>
					<br>
					⑤ “다니엘성형외과의원”은(는) “이용자”에게 청약철회를 이유로 위약금 또는 손해배상을 청구하지 않습니다. 그러나 “이용자”의 계약해제·해지는 손해배상의 청구에 영향을 미치지 않습니다.<br>
					<br>
					제28조 [다니엘성형외과의원의 계약해제·해지 및 이용제한]<br>
					<br>
					① “다니엘성형외과의원”은(는) “이용자”가 제12조 제2항에서 정한 행위를 하였을 경우 사전통지 없이 계약을 해제·해지하거나 또는 기간을 정하여 서비스이용을 제한할 수 있습니다.<br>
					<br>
					② 제1항의 해제·해지는 “다니엘성형외과의원”이(가) 자신이 정한 통지방법에 따라 “이용자”에게 그 의사를 표시한 때에 효력이 발생합니다.<br>
					<br>
					③ “다니엘성형외과의원”의 해제·해지 및 이용제한에 대하여 “이용자”는 “다니엘성형외과의원”이(가) 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 “다니엘성형외과의원”이(가) 인정하는 경우, “다니엘성형외과의원”은(는) 즉시 서비스의 이용을 재개합니다.<br>
					<br>
					제29조 [다니엘성형외과의원의 계약해제·해지의 효과]<br>
					<br>
					“이용자”의 귀책사유에 따른 이용계약의 해제·해지의 효과는 제27조를 준용합니다. 다만, “다니엘성형외과의원”은(는) “이용자”에 대하여 계약해제·해지의 의사표시를 한 날로부터 7영업일 이내에 대금의 결제와 동일한 방법으로 이를 환급합니다.<br>
					<br>
					제5장 과오금, 피해보상 등<br>
					<br>
					제30조 [과오금]<br>
					<br>
					① “다니엘성형외과의원”은(는) 과오금이 발생한 경우 이용대금의 결제와 동일한 방법으로 과오금 전액을 환불하여야 합니다. 다만, 동일한 방법으로 환불이 불가능할 때는 이를 사전에 고지합니다.<br>
					<br>
					② “다니엘성형외과의원”의 책임 있는 사유로 과오금이 발생한 경우 “다니엘성형외과의원”은(는) 계약비용, 수수료 등에 관계없이 과오금 전액을 환불합니다. 다만, “이용자”의 책임 있는 사유로 과오금이 발생한 경우, “다니엘성형외과의원”이(가) 과오금을 환불하는 데 소요되는 비용은 합리적인 범위 내에서 “이용자”가 부담하여야 합니다.<br>
					<br>
					③ 다니엘성형외과의원는은(는) “이용자”가 주장하는 과오금에 대해 환불을 거부할 경우에 정당하게 이용대금이 부과되었음을 입증할 책임을 집니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) 과오금의 환불절차를 디지털콘텐츠이용자보호지침에 따라 처리합니다.<br>
					<br>
					제31조 [콘텐츠하자 등에 의한 이용자피해보상]<br>
					<br>
					“다니엘성형외과의원”은(는) 콘텐츠하자 등에 의한 이용자피해보상의 기준·범위·방법 및 절차에 관한 사항을 디지털콘텐츠이용자보호지침에 따라 처리합니다.<br>
					<br>
					제32조 [면책조항]<br>
					<br>
					① “다니엘성형외과의원”은(는) 천재지변 또는 이에 준하는 불가항력으로 인하여 “콘텐츠”를 제공할 수 없는 경우에는 “콘텐츠” 제공에 관한 책임이 면제됩니다.<br>
					<br>
					② “다니엘성형외과의원”은(는) “이용자”의 귀책사유로 인한 콘텐츠이용의 장애에 대하여는 책임을 지지 않습니다.<br>
					<br>
					③ “다니엘성형외과의원”은(는) “회원”이 “콘텐츠”와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.<br>
					<br>
					④ “다니엘성형외과의원”은(는) “이용자” 상호간 또는 “이용자”와 제3자 간에 “콘텐츠”를 매개로 하여 발생한 분쟁 등에 대하여 책임을 지지 않습니다.<br>
					<br>
					제33조 [분쟁의 해결]<br>
					<br>
					“다니엘성형외과의원”은(는) 분쟁이 발생하였을 경우에 “이용자”가 제기하는 정당한 의견이나 불만을 반영하여 적절하고 신속한 조치를 취합니다. 다만, 신속한 처리가 곤란한 경우에 “다니엘성형외과의원”은(는) “이용자”에게 그 사유와 처리일정을 통보합니다.
				</div>
			</div>
			
		</section>
	
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 시작 -->
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 끝 (style.layout.css) -->
		
	</div>
	
	<jsp:include page="../include/mQuickInquire.jsp"></jsp:include>
</body>
</html>