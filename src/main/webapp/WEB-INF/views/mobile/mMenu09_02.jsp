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
							<button>온라인 상담 ▼</button>
							<ul>
								<li><a href="${pageContext.request.contextPath}/m/menu09_01">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_02">온라인 상담</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_03">시술 전후 사진</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_04">리얼스토리</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_05">자필후기</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_06">이벤트</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_07">예약하기</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_08">시술&수술주의사항</a></li>
								<li><a href="${pageContext.request.contextPath}/m/menu09_09">자필후기</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<!-- 서브 비주얼영역 시작 (이전, 다음페이지로 이동) -->
			<div id="sub-visual" data-sec="커뮤니티" data-menu="온라인 상담">
				<div class="inner">
			
				</div>
			</div>
			<!-- 서브 비주얼영역 끝 -->
			
			<!-- 타이틀 시작 -->
			<div class="board-title">
				<h5>온라인 상담</h5>
			</div>
			<!-- 타이틀 끝 -->
			
			<div class="search-box">
				<form name="board_search" method="post" action="" onsubmit="return inquire_search_it(this)">
					<select name="select_key" id="select_key"><option value="i_title|i_content|i_name">전체</option><option value="i_title">제목</option><option value="i_content">내용</option><option value="i_name">작성자</option></select>		<input type="text" title="검색어" name="input_key" value="">
					<button type="submit">검색</button>
				</form>
			</div>
			
			
			<div class="board-counsel-list">
				<ul class="full">
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2474&amp;nextmode=view">
							<b><!---->얼굴 윤곽 주사</b>
							<i class="name">김대명</i><span class="line">|</span><i class="date">2019-08-19</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2260&amp;nextmode=view">
							<b><!---->짝눈교정은 어떻게하나요?</b>
							<i class="name">김주희</i><span class="line">|</span><i class="date">2019-04-12</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2259&amp;nextmode=view">
							<b><!---->주근깨 제거비용이 알고싶습니다</b>
							<i class="name">다니엘</i><span class="line">|</span><i class="date">2019-04-09</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2258&amp;nextmode=view">
							<b><!---->앞트임 흉터 ,쌍꺼풀 절개 흉터 레이저</b>
							<i class="name">다니엘</i><span class="line">|</span><i class="date">2019-04-09</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2257&amp;nextmode=view">
							<b><!---->흉터제거</b>
							<i class="name">.다니엘</i><span class="line">|</span><i class="date">2019-04-07</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2256&amp;nextmode=view">
							<b><!---->인중제모가격문의</b>
							<i class="name">이해원</i><span class="line">|</span><i class="date">2019-04-04</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2255&amp;nextmode=view">
							<b><!---->얼굴 윤곽</b>
							<i class="name">다니엘</i><span class="line">|</span><i class="date">2019-03-29</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2254&amp;nextmode=view">
							<b><!---->눈밑지방제거</b>
							<i class="name">박수진</i><span class="line">|</span><i class="date">2019-03-29</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2253&amp;nextmode=view">
							<b><!---->제모 비용문의</b>
							<i class="name">다니엘</i><span class="line">|</span><i class="date">2019-03-27</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				
					<li>
						<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;distinction=password&amp;mode=password&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1&amp;seq=2252&amp;nextmode=view">
							<b><!---->얼굴 필러</b>
							<i class="name">다니엘</i><span class="line">|</span><i class="date">2019-03-27</i><span class="line">|</span><i class="date">비공개</i>
						</a>
						<div class="answer"><i class="state com">답변완료</i></div>
					</li>
				</ul>
			</div>
			
			<!-- 게시판 버튼 시작 -->
			<div class="btn-group">
				<div class="inner">
					<a href="?pCode=528&amp;action=&amp;psseq=&amp;pagecode=&amp;mode=insert&amp;distinction=insert&amp;perm=Y&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=1" class="btn btn-list">글쓰기</a>
				</div>
			</div>
			<!-- 게시판 버튼 끝 -->
			
			
			<div id="board-pagenation">
				<div class="inner">
					<a href="javascript:;"><svg class="svg-inline--fa fa-angle-double-left fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-double-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M223.7 239l136-136c9.4-9.4 24.6-9.4 33.9 0l22.6 22.6c9.4 9.4 9.4 24.6 0 33.9L319.9 256l96.4 96.4c9.4 9.4 9.4 24.6 0 33.9L393.7 409c-9.4 9.4-24.6 9.4-33.9 0l-136-136c-9.5-9.4-9.5-24.6-.1-34zm-192 34l136 136c9.4 9.4 24.6 9.4 33.9 0l22.6-22.6c9.4-9.4 9.4-24.6 0-33.9L127.9 256l96.4-96.4c9.4-9.4 9.4-24.6 0-33.9L201.7 103c-9.4-9.4-24.6-9.4-33.9 0l-136 136c-9.5 9.4-9.5 24.6-.1 34z"></path></svg><!-- <i class="fas fa-angle-double-left"></i> --></a>
					<a href="javascript:;"><svg class="svg-inline--fa fa-angle-left fa-w-8" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path fill="currentColor" d="M31.7 239l136-136c9.4-9.4 24.6-9.4 33.9 0l22.6 22.6c9.4 9.4 9.4 24.6 0 33.9L127.9 256l96.4 96.4c9.4 9.4 9.4 24.6 0 33.9L201.7 409c-9.4 9.4-24.6 9.4-33.9 0l-136-136c-9.5-9.4-9.5-24.6-.1-34z"></path></svg><!-- <i class="fas fa-angle-left"></i> --></a>
					<a href="javascript:;" class="on">1</a>
					<a href="?pCode=528&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=2 ">2</a>
					<a href="?pCode=528&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=3 ">3</a>
					<a href="?pCode=528&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=4 "><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></a>
					<a href="?pCode=528&amp;select_key=&amp;input_key=&amp;nextmode=&amp;backpage=/m/528/&amp;i_cate=CN01&amp;kind=&amp;m_id=&amp;delflag=1&amp;page=113 "><svg class="svg-inline--fa fa-angle-double-right fa-w-14" aria-hidden="true" data-fa-processed="" data-prefix="fas" data-icon="angle-double-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34zm192-34l-136-136c-9.4-9.4-24.6-9.4-33.9 0l-22.6 22.6c-9.4 9.4-9.4 24.6 0 33.9l96.4 96.4-96.4 96.4c-9.4 9.4-9.4 24.6 0 33.9l22.6 22.6c9.4 9.4 24.6 9.4 33.9 0l136-136c9.4-9.2 9.4-24.4 0-33.8z"></path></svg><!-- <i class="fas fa-angle-double-right"></i> --></a>
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