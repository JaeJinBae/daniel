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
<style type ="text/css">
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

#board-pagenation a{
	margin: 0 !important;
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
							<button>커뮤니티 ▼</button>
							<jsp:include page="../include/mBreadCrumb.jsp"></jsp:include>
						</li>
						<li class="gnb">
							<button>예약하기 ▼</button>
							<ul>
								<li><a href="${pageContext.request.contextPath}/m/menu09_01">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_02">온라인 상담</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_03">시술 전후 사진</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_04">리얼스토리</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_05">자필후기</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_06">이벤트</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_07">예약하기</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_08">시술&수술주의사항</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<!-- 서브 비주얼영역 시작 (이전, 다음페이지로 이동) -->
			<div id="sub-visual" data-sec="커뮤니티" data-menu="예약하기">
				<div class="inner">
			
				</div>
			</div>
			<!-- 서브 비주얼영역 끝 -->

			<!-- 시술선택 및 예약날짜, 시간선택 시작 -->
			<div id="reserve">
				<div class="inner">
					<h3>다니엘 예약</h3>
					<div id="surgery-picker">
						<div class="surgery-title">
							<span>시술선택</span>
						</div>
						<!-- 시술선택 시작 -->
						<div class="surgery">
							<!-- 시술선택 탭(relsurgery-item$$ == #surgery-item$$ 만 매칭하면 탭기능이 활성화 됩니다. 스크립트는 sub.js에 들어있습니다.) -->
							<!-- 코드가 너무길어져서 탭내용은 1개만 넣어두었습니다. -->
							<div class="surgery-tab">
								<button rel="surgery-item477" class=" active  surgery-category" _parent_seq="477">필러</button>
								<button rel="surgery-item478" class=" surgery-category" _parent_seq="478">성형바디주사</button>
								<button rel="surgery-item479" class=" surgery-category" _parent_seq="479">윤곽성형주사</button>
								<button rel="surgery-item623" class=" surgery-category" _parent_seq="623">미용주사</button>
								<button rel="surgery-item630" class=" surgery-category" _parent_seq="630">스킨케어</button>
								<button rel="surgery-item636" class=" surgery-category" _parent_seq="636">성형보톡스</button>
								<button rel="surgery-item653" class=" surgery-category" _parent_seq="653">땀보톡스</button>
								<button rel="surgery-item658" class=" surgery-category" _parent_seq="658">리프팅보톡스</button>
								<button rel="surgery-item665" class=" surgery-category" _parent_seq="665">비만프로그램</button>
							</div>
			
							<!-- 내용 -->
							<div class="surgery-option">
								<div id="surgery-item477" class="surgery-inventory" style=" display:block ">
									<div class="item"><input type="checkbox" id="category480" value="480" _category1="477" _category1nm="필러" _category2="480" _pay="100000" _category2nm="국산 더채움 기본 1cc" _category3="" _category3nm="" _name="국산 더채움 기본 1cc" name="category"><label for="category480">국산 더채움 기본 1cc <em>100,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category677" value="677" _category1="477" _category1nm="필러" _category2="677" _pay="280000" _category2nm="수입 레스틸렌 1cc" _category3="" _category3nm="" _name="수입 레스틸렌 1cc" name="category"><label for="category677">수입 레스틸렌 1cc <em>280,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category481" value="481" _category1="477" _category1nm="필러" _category2="481" _pay="90000" _category2nm="턱필러 1cc 이내" _category3="" _category3nm="" _name="턱필러 1cc 이내" name="category"><label for="category481">턱필러 1cc 이내 <em>90,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category482" value="482" _category1="477" _category1nm="필러" _category2="482" _pay="90000" _category2nm="코필러 1cc 이내" _category3="" _category3nm="" _name="코필러 1cc 이내" name="category"><label for="category482">코필러 1cc 이내 <em>90,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category577" value="577" _category1="477" _category1nm="필러" _category2="577" _pay="300000" _category2nm="이마 볼륨" _category3="" _category3nm="" _name="이마 볼륨" name="category"><button>이마 볼륨 <em>300,000 원 ~</em></button>
											<ul><li class="child">	<input type="checkbox" id="category578" value="578" _category1="477" _category1nm="필러" _category2="577" _category2nm="이마 볼륨" _category3="578" _category3nm="이마볼륨 3cc" _pay="300000" _name="이마볼륨 3cc" name="category">	<label for="category578">이마볼륨 3cc <em>300,000 원</em></label></li></ul>
									</div>
									<div class="item"><input type="checkbox" id="category581" value="581" _category1="477" _category1nm="필러" _category2="581" _pay="200000" _category2nm="팔자주름" _category3="" _category3nm="" _name="팔자주름" name="category"><button>팔자주름 <em>200,000 원 ~</em></button>
										<ul><li class="child">	<input type="checkbox" id="category594" value="594" _category1="477" _category1nm="필러" _category2="581" _category2nm="팔자주름" _category3="594" _category3nm="팔자주름 2cc" _pay="200000" _name="팔자주름 2cc" name="category">	<label for="category594">팔자주름 2cc <em>200,000 원</em></label></li></ul>
									</div>
									<div class="item"><input type="checkbox" id="category597" value="597" _category1="477" _category1nm="필러" _category2="597" _pay="200000" _category2nm="앞광대·눈밑·다크서클" _category3="" _category3nm="" _name="앞광대·눈밑·다크서클" name="category"><button>앞광대·눈밑·다크서클 <em>200,000 원 ~</em></button>
										<ul><li class="child">	<input type="checkbox" id="category678" value="678" _category1="477" _category1nm="필러" _category2="597" _category2nm="앞광대·눈밑·다크서클" _category3="678" _category3nm="앞광대·눈밑·다크 2cc" _pay="200000" _name="앞광대·눈밑·다크 2cc" name="category">	<label for="category678">앞광대·눈밑·다크 2cc <em>200,000 원</em></label></li></ul>
									</div>
									<div class="item"><input type="checkbox" id="category599" value="599" _category1="477" _category1nm="필러" _category2="599" _pay="100000" _category2nm="입술필러 1cc" _category3="" _category3nm="" _name="입술필러 1cc" name="category"><label for="category599">입술필러 1cc <em>100,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category600" value="600" _category1="477" _category1nm="필러" _category2="600" _pay="150000" _category2nm="입술·입꼬리필러" _category3="" _category3nm="" _name="입술·입꼬리필러" name="category"><label for="category600">입술·입꼬리필러 <em>150,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category601" value="601" _category1="477" _category1nm="필러" _category2="601" _pay="150000" _category2nm="애교필러 1cc미만" _category3="" _category3nm="" _name="애교필러 1cc미만" name="category"><label for="category601">애교필러 1cc미만 <em>150,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category602" value="602" _category1="477" _category1nm="필러" _category2="602" _pay="150000" _category2nm="주름필러 1cc" _category3="" _category3nm="" _name="주름필러 1cc" name="category"><label for="category602">주름필러 1cc <em>150,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category603" value="603" _category1="477" _category1nm="필러" _category2="603" _pay="320000" _category2nm="목주름필러2cc+보톡스" _category3="" _category3nm="" _name="목주름필러2cc+보톡스" name="category"><label for="category603">목주름필러2cc+보톡스 <em>320,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category604" value="604" _category1="477" _category1nm="필러" _category2="604" _pay="700000" _category2nm="디자인필러(얼굴전체)" _category3="" _category3nm="" _name="디자인필러(얼굴전체)" name="category"><button>디자인필러(얼굴전체) <em>700,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category605" value="605" _category1="477" _category1nm="필러" _category2="604" _category2nm="디자인필러(얼굴전체)" _category3="605" _category3nm="디자인필러 6cc" _pay="700000" _name="디자인필러 6cc" name="category">	<label for="category605">디자인필러 6cc <em>700,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category606" value="606" _category1="477" _category1nm="필러" _category2="604" _category2nm="디자인필러(얼굴전체)" _category3="606" _category3nm="디자인필러 10cc" _pay="1000000" _name="디자인필러 10cc" name="category">	<label for="category606">디자인필러 10cc <em>1,000,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category607" value="607" _category1="477" _category1nm="필러" _category2="604" _category2nm="디자인필러(얼굴전체)" _category3="607" _category3nm="디자인필러 13cc" _pay="1200000" _name="디자인필러 13cc" name="category">	<label for="category607">디자인필러 13cc <em>1,200,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category608" value="608" _category1="477" _category1nm="필러" _category2="608" _pay="30000" _category2nm="리터치 2주내 0.5cc 미만" _category3="" _category3nm="" _name="리터치 2주내 0.5cc 미만" name="category"><label for="category608">리터치 2주내 0.5cc 미만 <em>30,000 원</em></label></div>
								</div>
								
								<div id="surgery-item478" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category609" value="609" _category1="478" _category1nm="성형바디주사" _category2="609" _pay="70000" _category2nm="아큐주사" _category3="" _category3nm="" _name="아큐주사" name="category"><button>아큐주사 <em>70,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category610" value="610" _category1="478" _category1nm="성형바디주사" _category2="609" _category2nm="아큐주사" _category3="610" _category3nm="아큐주사 500cc" _pay="70000" _name="아큐주사 500cc" name="category">	<label for="category610">아큐주사 500cc <em>70,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category611" value="611" _category1="478" _category1nm="성형바디주사" _category2="609" _category2nm="아큐주사" _category3="611" _category3nm="아큐주사 1000cc(분할x)" _pay="110000" _name="아큐주사 1000cc(분할x)" name="category">	<label for="category611">아큐주사 1000cc(분할x) <em>110,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category612" value="612" _category1="478" _category1nm="성형바디주사" _category2="612" _pay="80000" _category2nm="팻다운 아르기닌주사 주1회" _category3="" _category3nm="" _name="팻다운 아르기닌주사 주1회" name="category"><label for="category612">팻다운 아르기닌주사 주1회 <em>80,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category617" value="617" _category1="478" _category1nm="성형바디주사" _category2="617" _pay="100000" _category2nm="바디성형보톡스" _category3="" _category3nm="" _name="바디성형보톡스" name="category"><button>바디성형보톡스 <em>100,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category618" value="618" _category1="478" _category1nm="성형바디주사" _category2="617" _category2nm="바디성형보톡스" _category3="618" _category3nm="종아리승모근삼각근 100u" _pay="100000" _name="종아리승모근삼각근 100u" name="category">	<label for="category618">종아리승모근삼각근 100u <em>100,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category619" value="619" _category1="478" _category1nm="성형바디주사" _category2="617" _category2nm="바디성형보톡스" _category3="619" _category3nm="종아리승모근삼각근 150u" _pay="150000" _name="종아리승모근삼각근 150u" name="category">	<label for="category619">종아리승모근삼각근 150u <em>150,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category620" value="620" _category1="478" _category1nm="성형바디주사" _category2="617" _category2nm="바디성형보톡스" _category3="620" _category3nm="종아리승모근삼각근 200u" _pay="190000" _name="종아리승모근삼각근 200u" name="category">	<label for="category620">종아리승모근삼각근 200u <em>190,000 원</em></label></li>
										</ul>
									</div>
								</div>
								
								<div id="surgery-item479" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category485" value="485" _category1="479" _category1nm="윤곽성형주사" _category2="485" _pay="10000" _category2nm="윤곽주사" _category3="" _category3nm="" _name="윤곽주사" name="category"><button>윤곽주사 <em>10,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category621" value="621" _category1="479" _category1nm="윤곽성형주사" _category2="485" _category2nm="윤곽주사" _category3="621" _category3nm="윤곽주사 1cc" _pay="10000" _name="윤곽주사 1cc" name="category">	<label for="category621">윤곽주사 1cc <em>10,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category622" value="622" _category1="479" _category1nm="윤곽성형주사" _category2="485" _category2nm="윤곽주사" _category3="622" _category3nm="윤곽주사 한부위무제한" _pay="50000" _name="윤곽주사 한부위무제한" name="category">	<label for="category622">윤곽주사 한부위무제한 <em>50,000 원</em></label></li>
										</ul>
									</div>
								</div>
								
								<div id="surgery-item623" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category624" value="624" _category1="623" _category1nm="미용주사" _category2="624" _pay="50000" _category2nm="백옥주사 bc포함" _category3="" _category3nm="" _name="백옥주사 bc포함" name="category"><button>백옥주사 bc포함 <em>50,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category680" value="680" _category1="623" _category1nm="미용주사" _category2="624" _category2nm="백옥주사 bc포함" _category3="680" _category3nm="백옥주사 1회" _pay="50000" _name="백옥주사 1회" name="category">	<label for="category680">백옥주사 1회 <em>50,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category625" value="625" _category1="623" _category1nm="미용주사" _category2="624" _category2nm="백옥주사 bc포함" _category3="625" _category3nm="백옥주사 10회" _pay="250000" _name="백옥주사 10회" name="category">	<label for="category625">백옥주사 10회 <em>250,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category626" value="626" _category1="623" _category1nm="미용주사" _category2="626" _pay="50000" _category2nm="신데렐라주사 bc포함" _category3="" _category3nm="" _name="신데렐라주사 bc포함" name="category"><button>신데렐라주사 bc포함 <em>50,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category681" value="681" _category1="623" _category1nm="미용주사" _category2="626" _category2nm="신데렐라주사 bc포함" _category3="681" _category3nm="신데렐라주사 1회" _pay="50000" _name="신데렐라주사 1회" name="category">	<label for="category681">신데렐라주사 1회 <em>50,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category627" value="627" _category1="623" _category1nm="미용주사" _category2="626" _category2nm="신데렐라주사 bc포함" _category3="627" _category3nm="신데렐라주사 10회" _pay="250000" _name="신데렐라주사 10회" name="category">	<label for="category627">신데렐라주사 10회 <em>250,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category628" value="628" _category1="623" _category1nm="미용주사" _category2="628" _pay="80000" _category2nm="마이어스칵테일" _category3="" _category3nm="" _name="마이어스칵테일" name="category"><button>마이어스칵테일 <em>80,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category682" value="682" _category1="623" _category1nm="미용주사" _category2="628" _category2nm="마이어스칵테일" _category3="682" _category3nm="마이어스칵테일 1회" _pay="80000" _name="마이어스칵테일 1회" name="category">	<label for="category682">마이어스칵테일 1회 <em>80,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category629" value="629" _category1="623" _category1nm="미용주사" _category2="628" _category2nm="마이어스칵테일" _category3="629" _category3nm="마이어스칵테일 10회" _pay="400000" _name="마이어스칵테일 10회" name="category">	<label for="category629">마이어스칵테일 10회 <em>400,000 원</em></label></li>
										</ul>
									</div>
								</div>
								
								<div id="surgery-item630" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category631" value="631" _category1="630" _category1nm="스킨케어" _category2="631" _pay="50000" _category2nm="화이트닝 비타민이온토" _category3="" _category3nm="" _name="화이트닝 비타민이온토" name="category"><label for="category631">화이트닝 비타민이온토 <em>50,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category632" value="632" _category1="630" _category1nm="스킨케어" _category2="632" _pay="50000" _category2nm="트러블·모공 디톡스·아쿠아필" _category3="" _category3nm="" _name="트러블·모공 디톡스·아쿠아필" name="category"><label for="category632">트러블·모공 디톡스·아쿠아필 <em>50,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category633" value="633" _category1="630" _category1nm="스킨케어" _category2="633" _pay="80000" _category2nm="안티에이징 호박필" _category3="" _category3nm="" _name="안티에이징 호박필" name="category"><label for="category633">안티에이징 호박필 <em>80,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category634" value="634" _category1="630" _category1nm="스킨케어" _category2="634" _pay="80000" _category2nm="수분 LDM" _category3="" _category3nm="" _name="수분 LDM" name="category"><label for="category634">수분 LDM <em>80,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category635" value="635" _category1="630" _category1nm="스킨케어" _category2="635" _pay="80000" _category2nm="음이온테라피 오투덤" _category3="" _category3nm="" _name="음이온테라피 오투덤" name="category"><label for="category635">음이온테라피 오투덤 <em>80,000 원</em></label></div>
								</div>
								
								<div id="surgery-item636" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category637" value="637" _category1="636" _category1nm="성형보톡스" _category2="637" _pay="30000" _category2nm="사각턱" _category3="" _category3nm="" _name="사각턱" name="category"><button>사각턱 <em>30,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category638" value="638" _category1="636" _category1nm="성형보톡스" _category2="637" _category2nm="사각턱" _category3="638" _category3nm="사각턱 30u" _pay="30000" _name="사각턱 30u" name="category">	<label for="category638">사각턱 30u <em>30,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category639" value="639" _category1="636" _category1nm="성형보톡스" _category2="637" _category2nm="사각턱" _category3="639" _category3nm="사각턱 50u" _pay="50000" _name="사각턱 50u" name="category">	<label for="category639">사각턱 50u <em>50,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category640" value="640" _category1="636" _category1nm="성형보톡스" _category2="637" _category2nm="사각턱" _category3="640" _category3nm="사각턱 64u 정량" _pay="60000" _name="사각턱 64u 정량" name="category">	<label for="category640">사각턱 64u 정량 <em>60,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category641" value="641" _category1="636" _category1nm="성형보톡스" _category2="641" _pay="30000" _category2nm="미간" _category3="" _category3nm="" _name="미간" name="category"><label for="category641">미간 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category642" value="642" _category1="636" _category1nm="성형보톡스" _category2="642" _pay="30000" _category2nm="광대" _category3="" _category3nm="" _name="광대" name="category"><label for="category642">광대 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category643" value="643" _category1="636" _category1nm="성형보톡스" _category2="643" _pay="30000" _category2nm="자갈턱" _category3="" _category3nm="" _name="자갈턱" name="category"><label for="category643">자갈턱 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category644" value="644" _category1="636" _category1nm="성형보톡스" _category2="644" _pay="30000" _category2nm="콧볼축소" _category3="" _category3nm="" _name="콧볼축소" name="category"><label for="category644">콧볼축소 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category645" value="645" _category1="636" _category1nm="성형보톡스" _category2="645" _pay="30000" _category2nm="콧등주름" _category3="" _category3nm="" _name="콧등주름" name="category"><label for="category645">콧등주름 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category646" value="646" _category1="636" _category1nm="성형보톡스" _category2="646" _pay="30000" _category2nm="잇몸노출" _category3="" _category3nm="" _name="잇몸노출" name="category"><label for="category646">잇몸노출 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category647" value="647" _category1="636" _category1nm="성형보톡스" _category2="647" _pay="30000" _category2nm="이마주름 부분고랑" _category3="" _category3nm="" _name="이마주름 부분고랑" name="category"><label for="category647">이마주름 부분고랑 <em>30,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category648" value="648" _category1="636" _category1nm="성형보톡스" _category2="648" _pay="100000" _category2nm="바디성형보톡스" _category3="" _category3nm="" _name="바디성형보톡스" name="category"><button>바디성형보톡스 <em>100,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category649" value="649" _category1="636" _category1nm="성형보톡스" _category2="648" _category2nm="바디성형보톡스" _category3="649" _category3nm="종아리승모근삼각근 100u" _pay="100000" _name="종아리승모근삼각근 100u" name="category">	<label for="category649">종아리승모근삼각근 100u <em>100,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category650" value="650" _category1="636" _category1nm="성형보톡스" _category2="648" _category2nm="바디성형보톡스" _category3="650" _category3nm="종아리승모근삼각근 150u" _pay="150000" _name="종아리승모근삼각근 150u" name="category">	<label for="category650">종아리승모근삼각근 150u <em>150,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category651" value="651" _category1="636" _category1nm="성형보톡스" _category2="648" _category2nm="바디성형보톡스" _category3="651" _category3nm="종아리승모근삼각근 200u" _pay="190000" _name="종아리승모근삼각근 200u" name="category">	<label for="category651">종아리승모근삼각근 200u <em>190,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category652" value="652" _category1="636" _category1nm="성형보톡스" _category2="652" _pay="100000" _category2nm="치료용보톡스" _category3="" _category3nm="" _name="치료용보톡스" name="category"><label for="category652">치료용보톡스 <em>100,000 원</em></label></div>
								</div>
								
								<div id="surgery-item653" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category654" value="654" _category1="653" _category1nm="땀보톡스" _category2="654" _pay="100000" _category2nm="다한증 보톡스" _category3="" _category3nm="" _name="다한증 보톡스" name="category"><button>다한증 보톡스 <em>100,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category655" value="655" _category1="653" _category1nm="땀보톡스" _category2="654" _category2nm="다한증 보톡스" _category3="655" _category3nm="다한증 보톡스 50u" _pay="100000" _name="다한증 보톡스 50u" name="category">	<label for="category655">다한증 보톡스 50u <em>100,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category656" value="656" _category1="653" _category1nm="땀보톡스" _category2="654" _category2nm="다한증 보톡스" _category3="656" _category3nm="다한증 보톡스 100u" _pay="150000" _name="다한증 보톡스 100u" name="category">	<label for="category656">다한증 보톡스 100u <em>150,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category657" value="657" _category1="653" _category1nm="땀보톡스" _category2="654" _category2nm="다한증 보톡스" _category3="657" _category3nm="다한증 보톡스 200u" _pay="250000" _name="다한증 보톡스 200u" name="category">	<label for="category657">다한증 보톡스 200u <em>250,000 원</em></label></li>
										</ul>
									</div>
								</div>
								
								<div id="surgery-item658" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category659" value="659" _category1="658" _category1nm="리프팅보톡스" _category2="659" _pay="120000" _category2nm="스킨보톡스" _category3="" _category3nm="" _name="스킨보톡스" name="category"><button>스킨보톡스 <em>120,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category660" value="660" _category1="658" _category1nm="리프팅보톡스" _category2="659" _category2nm="스킨보톡스" _category3="660" _category3nm="스킨보톡스 V라인" _pay="120000" _name="스킨보톡스 V라인" name="category">	<label for="category660">스킨보톡스 V라인 <em>120,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category661" value="661" _category1="658" _category1nm="리프팅보톡스" _category2="659" _category2nm="스킨보톡스" _category3="661" _category3nm="스킨보톡스 목주름" _pay="120000" _name="스킨보톡스 목주름" name="category">	<label for="category661">스킨보톡스 목주름 <em>120,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category662" value="662" _category1="658" _category1nm="리프팅보톡스" _category2="659" _category2nm="스킨보톡스" _category3="662" _category3nm="스킨보톡스 얼굴전체" _pay="250000" _name="스킨보톡스 얼굴전체" name="category">	<label for="category662">스킨보톡스 얼굴전체 <em>250,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category663" value="663" _category1="658" _category1nm="리프팅보톡스" _category2="659" _category2nm="스킨보톡스" _category3="663" _category3nm="스킨보톡스 얼굴전체+목" _pay="350000" _name="스킨보톡스 얼굴전체+목" name="category">	<label for="category663">스킨보톡스 얼굴전체+목 <em>350,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category664" value="664" _category1="658" _category1nm="리프팅보톡스" _category2="659" _category2nm="스킨보톡스" _category3="664" _category3nm="연고마취" _pay="5000" _name="연고마취" name="category">	<label for="category664">연고마취 <em>5,000 원</em></label></li>
										</ul>
									</div>
								</div>
								<div id="surgery-item665" class="surgery-inventory" style="">
									<div class="item"><input type="checkbox" id="category702" value="702" _category1="665" _category1nm="비만프로그램" _category2="702" _pay="190000" _category2nm="리포리바인 4회" _category3="" _category3nm="" _name="리포리바인 4회" name="category"><label for="category702">리포리바인 4회 <em>190,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category703" value="703" _category1="665" _category1nm="비만프로그램" _category2="703" _pay="360000" _category2nm="로보렉스(2모드)4회" _category3="" _category3nm="" _name="로보렉스(2모드)4회" name="category"><label for="category703">로보렉스(2모드)4회 <em>360,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category667" value="667" _category1="665" _category1nm="비만프로그램" _category2="667" _pay="280000" _category2nm="팻다운아르기닌" _category3="" _category3nm="" _name="팻다운아르기닌" name="category"><button>팻다운아르기닌 <em>280,000 원 ~</em></button>
										<ul>
											<li class="child">	<input type="checkbox" id="category668" value="668" _category1="665" _category1nm="비만프로그램" _category2="667" _category2nm="팻다운아르기닌" _category3="668" _category3nm="팻다운아르기닌4회" _pay="280000" _name="팻다운아르기닌4회" name="category">	<label for="category668">팻다운아르기닌4회 <em>280,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category669" value="669" _category1="665" _category1nm="비만프로그램" _category2="667" _category2nm="팻다운아르기닌" _category3="669" _category3nm="팻다운4회+리포리바인4회" _pay="360000" _name="팻다운4회+리포리바인4회" name="category">	<label for="category669">팻다운4회+리포리바인4회 <em>360,000 원</em></label></li>
										</ul>
									</div>
									<div class="item"><input type="checkbox" id="category704" value="704" _category1="665" _category1nm="비만프로그램" _category2="704" _pay="290000" _category2nm="비만4주 프로그램" _category3="" _category3nm="" _name="비만4주 프로그램" name="category"><label for="category704">비만4주 프로그램 <em>290,000 원</em></label></div>
									<div class="item"><input type="checkbox" id="category671" value="671" _category1="665" _category1nm="비만프로그램" _category2="671" _pay="360000" _category2nm="바디리프팅" _category3="" _category3nm="" _name="바디리프팅" name="category"><button>바디리프팅 <em>360,000 원 ~</em></button>
										<ul><li class="child">	<input type="checkbox" id="category672" value="672" _category1="665" _category1nm="비만프로그램" _category2="671" _category2nm="바디리프팅" _category3="672" _category3nm="팔뚝300샷+ 리포리바인 3회" _pay="360000" _name="팔뚝300샷+ 리포리바인 3회" name="category">	<label for="category672">팔뚝300샷+ 리포리바인 3회 <em>360,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category673" value="673" _category1="665" _category1nm="비만프로그램" _category2="671" _category2nm="바디리프팅" _category3="673" _category3nm="엉밑 300샷+리포리바인3회" _pay="360000" _name="엉밑 300샷+리포리바인3회" name="category">	<label for="category673">엉밑 300샷+리포리바인3회 <em>360,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category674" value="674" _category1="665" _category1nm="비만프로그램" _category2="671" _category2nm="바디리프팅" _category3="674" _category3nm="허벅지or복부500샷+리포리바인3회" _pay="540000" _name="허벅지or복부500샷+리포리바인3회" name="category">	<label for="category674">허벅지or복부500샷+리포리바인3회 <em>540,000 원</em></label></li>
											<li class="child">	<input type="checkbox" id="category675" value="675" _category1="665" _category1nm="비만프로그램" _category2="671" _category2nm="바디리프팅" _category3="675" _category3nm="바디리프팅 샷추가" _pay="100000" _name="바디리프팅 샷추가" name="category">	<label for="category675">바디리프팅 샷추가 <em>100,000 원</em></label></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 시술선택 끝 -->
			
					<!-- 예약날짜 및 시간선택 시작 -->
					<div id="date-picker">
						<div class="date-title">
							<span>예약날짜 &amp; 시간선택</span>
						</div>
						<!-- 달 선택 -->
			
						<!-- 달력(오늘:today, 쉬는날:closed, 날짜선택:selected) -->
						<div class="calendar" id="getCalendar">
						<div class="month">
							<div class="brick">
								<button class="month-prev prevMonth"><svg class="svg-inline--fa fa-chevron-left fa-w-10" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="chevron-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg><!-- <i class="fas fa-chevron-left"></i> --></button>
								<span class="day-info">2019.09</span>
								<button class="month-next nextMonth" onclick="getCalendar('move','2019','10')"><svg class="svg-inline--fa fa-chevron-right fa-w-10" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <i class="fas fa-chevron-right"></i> --></button>
							</div>
						</div>
			
			
						<table class="calendar-tbl">
							<caption>예약날짜 및 시간선택 달력</caption>
							<thead>
								<tr>
									<th class="sun">일</th>
									<th class="mon">월</th>
									<th class="the">화</th>
									<th class="wed">수</th>
									<th class="thu">목</th>
									<th class="fri">금</th>
									<th class="sat">토</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="sun closed ">
										<button>1</button>
									</td>
									<td class="mon  closed   calDate date_2019-09-02" onclick="onCalDate('2019-09-02');">
										<button>2</button>
									</td>
									<td class="the  closed   calDate date_2019-09-03" onclick="onCalDate('2019-09-03');">
										<button>3</button>
									</td>
									<td class="wed  closed   today  calDate date_2019-09-04" onclick="onCalDate('2019-09-04');">
										<button>4</button>
									</td>
									<td class="thu  closed   calDate date_2019-09-05" onclick="onCalDate('2019-09-05');">
										<button>5</button>
									</td>
									<td class="fri   calDate date_2019-09-06" onclick="onCalDate('2019-09-06');">
										<button>6</button>
									</td>
									<td class="sat   calDate date_2019-09-07" onclick="onCalDate('2019-09-07');">
										<button>7</button>
									</td>
								</tr>
								<tr>						
									<td class="sun closed ">
										<button>8</button>
									</td>
									<td class="mon   calDate date_2019-09-09" onclick="onCalDate('2019-09-09');">
										<button>9</button>
									</td>
									<td class="the   calDate date_2019-09-10" onclick="onCalDate('2019-09-10');">
										<button>10</button>
									</td>
									<td class="wed   calDate date_2019-09-11" onclick="onCalDate('2019-09-11');">
										<button>11</button>
									</td>
									<td class="thu   calDate date_2019-09-12" onclick="onCalDate('2019-09-12');">
										<button>12</button>
									</td>
									<td class="fri   calDate date_2019-09-13" onclick="onCalDate('2019-09-13');">
										<button>13</button>
									</td>
									<td class="sat   calDate date_2019-09-14" onclick="onCalDate('2019-09-14');">
										<button>14</button>
									</td>
								</tr>
								<tr>
									<td class="sun closed ">
										<button>15</button>
									</td>
									<td class="mon   calDate date_2019-09-16" onclick="onCalDate('2019-09-16');">
										<button>16</button>
									</td>
									<td class="the   calDate date_2019-09-17" onclick="onCalDate('2019-09-17');">
										<button>17</button>
									</td>
									<td class="wed   calDate date_2019-09-18" onclick="onCalDate('2019-09-18');">
										<button>18</button>
									</td>
									<td class="thu   calDate date_2019-09-19" onclick="onCalDate('2019-09-19');">
										<button>19</button>
									</td>
									<td class="fri   calDate date_2019-09-20" onclick="onCalDate('2019-09-20');">
										<button>20</button>
									</td>
									<td class="sat   calDate date_2019-09-21" onclick="onCalDate('2019-09-21');">
										<button>21</button>
									</td>
								</tr>
								<tr>
									<td class="sun closed ">
										<button>22</button>
									</td>
									<td class="mon   calDate date_2019-09-23" onclick="onCalDate('2019-09-23');">
										<button>23</button>
									</td>
									<td class="the   calDate date_2019-09-24" onclick="onCalDate('2019-09-24');">
										<button>24</button>
									</td>
									<td class="wed   calDate date_2019-09-25" onclick="onCalDate('2019-09-25');">
										<button>25</button>
									</td>
									<td class="thu   calDate date_2019-09-26" onclick="onCalDate('2019-09-26');">
										<button>26</button>
									</td>
									<td class="fri   calDate date_2019-09-27" onclick="onCalDate('2019-09-27');">
										<button>27</button>
									</td>
									<td class="sat   calDate date_2019-09-28" onclick="onCalDate('2019-09-28');">
										<button>28</button>
									</td>
								</tr>
								<tr>
									<td class="sun closed ">
										<button>29</button>
									</td>
									<td class="mon   calDate date_2019-09-30" onclick="onCalDate('2019-09-30');">
										<button>30</button>
									</td>
									<td class="the  closed   calDate date_" onclick="onCalDate('');">
										<button></button>
									</td>
									<td class="wed  closed   calDate date_" onclick="onCalDate('');">
										<button></button>
									</td>
									<td class="thu  closed   calDate date_" onclick="onCalDate('');">
										<button></button>
									</td>
									<td class="fri  closed   calDate date_" onclick="onCalDate('');">
										<button></button>
									</td>
									<td class="sat  closed   calDate date_" onclick="onCalDate('');">
										<button></button>
									</td>
								
								</tr>
							</tbody>
						</table>
			
			
			
			</div>
			
						<!-- 시간선택(선택:selected, 진료불가능시간:closed) -->
						<div class="time-picker"></div>
					</div>
					<!-- 예약날짜 및 시간선택 끝 -->
				</div>
			</div>
			<!-- 시술선택 및 예약날짜, 시간선택 끝 -->
			
			<!-- 선택된 시술 시작 -->
			<div id="pop-order">
				<div class="inner">
					<div id="pop-order-list">
					</div>
					<div id="pop-order-btn">
						<div class="brick">
							<button class="btn-complete">시술선택 완료</button>
							<button class="btn-reset"><em><svg class="svg-inline--fa fa-times fa-w-12" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path fill="currentColor" d="M323.1 441l53.9-53.9c9.4-9.4 9.4-24.5 0-33.9L279.8 256l97.2-97.2c9.4-9.4 9.4-24.5 0-33.9L323.1 71c-9.4-9.4-24.5-9.4-33.9 0L192 168.2 94.8 71c-9.4-9.4-24.5-9.4-33.9 0L7 124.9c-9.4 9.4-9.4 24.5 0 33.9l97.2 97.2L7 353.2c-9.4 9.4-9.4 24.5 0 33.9L60.9 441c9.4 9.4 24.5 9.4 33.9 0l97.2-97.2 97.2 97.2c9.3 9.3 24.5 9.3 33.9 0z"></path></svg><!-- <i class="fas fa-times"></i> --></em>취소</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 선택된 시술 끝 -->
			
			
			<!-- 정보입력 및 선택시술 예약확인 시작 -->
			
			<form name="reserve" id="reserve" method="post" action="" enctype="multipart/form-data" autocomplete="off">
			<input type="hidden" name="fparam" value="">
			<input type="hidden" name="distinction" value="proc">
			<input type="hidden" name="r_pay" id="r_pay" value="">
			<input type="hidden" name="r_date" id="r_date" value="">
			<input type="hidden" name="r_time_code" id="r_time_code" value="">
			<input type="hidden" name="r_time" id="r_time" value="">
			
			<div id="order-form">
				<div class="inner">
					<div id="order-info">
						<div class="order-title">
							<span>정보입력</span>
						</div>
						<div class="order-form">
							<ul>
								<li><label for="r_name">고객명</label><input type="text" id="r_name" name="r_name" valid="required" element-name="고객명"></li>
								<li><label for="r_phone">연락처</label><input type="text" id="r_phone" name="r_phone" valid="required" element-name="연락처"></li>
								<li><label for="r_email">이메일</label><input type="text" id="r_email" name="r_email" valid="required" element-name="이메일"></li>
								<li><label for="r_memo">메모</label><input type="text" id="r_memo" name="r_memo"></li>
							</ul>
							<div class="agreement">
								<p><input type="checkbox" id="agree01" name="agree01"><label for="agree01">시술 전 상담이 필요하신 고객님은 체크해주세요.</label></p>
								<p><input type="checkbox" id="agree02" name="agree02"><label for="agree02"><em>[필수]</em> 서비스 이용 및 예약에 필요한 개인정보 제공에 동의합니다.<button class="agree01" onclick="return false;">약관확인</button></label></p>
								<p><input type="checkbox" id="agree03" name="agree03"><label for="agree03"><em>[필수]</em> 마케팅 활용에 동의합니다.<button class="agree02" onclick="return false;">약관확인</button></label></p>
							</div>
						</div>
					</div>
					<div id="order-surgery">
						<div class="order-title">
							<span>선택시술</span>
						</div>
						<div class="order-inventory">
							<div class="order-list"></div>
							<div class="order-price">
								<p class="txt01">총 예약금액 <em>0</em>원</p>
								<p class="txt02">(VAT별도)</p>
								<p class="txt03">* 결제는 내원 시 진행됩니다.</p>
							</div>
							<div class="order-date">
								<p><em>고객님의 예약일시</em> <span id="reserveDate"></span> <span id="reserveTime"></span></p>
							</div>
							<div class="order-btn">
								<!-- 버튼 클릭 시 예약접수완료 레이어팝업(#order-complete)이 나타납니다. -->
								<button type="button" onclick="ureserve_it('submit');">예약하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			</form>
			
			<!-- 정보입력 및 선택시술 예약확인 끝 -->
			
			
			
			<!-- 예약접수 완료 팝업 시작 -->
			<div id="order-complete">
				<div class="brick">
					<div class="order-complete-txt">
						<p class="txt01"><em>예약접수가 완료</em>되었습니다.</p>
						<p class="txt02">예약이 확정되면 카카오톡으로 알림이 발송됩니다.</p>
					</div>
					<div class="order-complete-form">
						<table>
							<caption>예약접수 완료 확인테이블</caption>
							<tbody>
								<tr>
									<th>고객명</th>
									<td><span id="result_name">손현정</span></td>
								</tr>
								<tr>
									<th>연락처</th>
									<td><span id="result_phone">010-5555-5555</span></td>
								</tr>
								<tr>
									<th>예약일시</th>
									<td><span id="result_date">2018.11.16(금) 16:30</span></td>
								</tr>
								<tr>
									<th>선택시술</th>
									<td><span id="result_category">이마볼륨 3cc 턱필러 1cc 이내</span></td>
								</tr>
								<tr>
									<th>총 예약금액</th>
									<td>
										<span id="result_pay"><em>390,000</em></span>(VAT별도)
									</td>
								</tr>
								<tr>
									<th>메모</th>
									<td><span id="result_memo">시술전 상담 가능한가요?</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="order-complete-cs">
						<p>
							예약 변경사항이 있으실 경우 카카오톡 상담<br>
							혹은 전화문의 바랍니다.
						</p>
					</div>
					<div class="order-complete-btn">
						<button class="order-btn-kakao" onclick="window.open('https://pf.kakao.com/_QxfxkCxl')"><img src="/assets/img/m/contents/btn_kakao.png">카카오톡상담</button>
						<button class="order-btn-complete">예약완료</button>
						<!-- 예약완료 클릭 시 본 팝업이 사라집니다. -->
					</div>
				</div>
			</div>
			<!-- 예약접수 완료 팝업 끝 -->
			
			
			<!-- 개인정보 제공 및 마케팅 활용 약관 동의 시작 -->
			<div id="pop-agreement">
				<!-- 개인정보 제공 -->
				<jsp:include page="../include/pcResAgreement.jsp"></jsp:include>
			</div>
			
			<!-- 마케팅 활용 -->
			<div class="pop-marketing">

			</div>
		</div>
		<!-- 개인정보 제공 및 마케팅 활용 약관 동의 끝 -->
		
		
		
		<iframe id="hidden" name="hiddenifr" style="width:1px; height:1px; border:0;" src="filecreate.php"></iframe>
		<form name="alim" id="alim" method="post" action="/html/reserve/_alim.php">
			<input type="hidden" name="r_name" id="r_name" value="">
			<input type="hidden" name="r_phone" id="r_phone" value="">
			<input type="hidden" name="r_date" id="r_date" value="">
			<input type="hidden" name="r_time" id="r_time" value="">
		</form>
		
			
		</section>
	
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 시작 -->
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 끝 (style.layout.css) -->
		
	</div>
	
	<jsp:include page="../include/mQuickInquire.jsp"></jsp:include>
</body>
</html>