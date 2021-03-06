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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/filestyle/jquery.filestyle.js"></script><!-- 파일첨부 플러그인 -->
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
	$("#form1").submit(function(){
		var ndate = new Date();
		var year = ndate.getFullYear();
		var month = ndate.getMonth()+1;
		var date = ndate.getDate();
		
		month = (month > 9) ? month+"":"0"+month;
		date = (date > 9) ? date+"":"0"+date;
		
		$("#regdate").val(year+"-"+month+"-"+date);
		
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		$("#phone").val(phone1+"-"+phone2+"-"+phone3);
		
		$("#ip").val(ip());
		var oldURL = document.referrer;
		$("#access_url").val(oldURL);
	});
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
			
			<form name="inquire" id="form1" method="post" action="${pageContext.request.contextPath}/m/menu09_02register" enctype="multipart/form-data">
				<input type="hidden" name="secret" id="secret" value="o">
				<input type="hidden" name="regdate" id="regdate">
				<input type="hidden" name="ip" id="ip">
				<input type="hidden" name="access_url" id="access_url">
				<input type="hidden" name="phone" id="phone">
				<!-- 타이틀 시작 -->
				<div class="board-title">
					<h5>온라인 상담</h5>
				</div>
				<!-- 타이틀 끝 -->
				
				<div class="inner">
					<table class="board-cousel-form">
						<caption>상담 게시판 상세</caption>							
						<tr>
							<th scope="row">이름</th>
							<td><input type="text" name="name" id="name" class="default" value=""></td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input type="password" name="pw" id="pw" class="default" autocomplete="off"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td>
								<input type="text" name="title" id="title" maxlength="200" element-name="제목" value="">
							</td>
						</tr>
						
						<tr>
							<th>연락처</th>
							<td>
								<select name="phone1" id="phone1" class="small">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> -
								<input type="text" name="phone2" id="phone2" element-name="연락처" maxlength="4" value="" autocomplete="off"> -
								<input type="text" name="phone3" id="phone3" element-name="연락처" maxlength="4" value="" autocomplete="off"><br><br>
								* 연락처를 남겨주시면 답변 후 문자메시지를 발송해드립니다.
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea name="content" id="content"></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="file_cnt">첨부파일</label></th>
							<td>
								<div class="form-file">
									<div>
										<input type="file" name="upload[]" style="width: 450px; position: absolute; clip: rect(0px, 0px, 0px, 0px); display: none;" id="jfilestyle-0" tabindex="-1">
										<br>
									</div>
								</div>
								<script>
									$('.form-file input[type="file"]').jfilestyle({
										//placeholder: '사진첨부',
										text : '파일첨부'
									})
								</script>
							</td>
						</tr>						
					</table>
				
					<div class="private-agree">
						<textarea name="b_mem_personal" id="b_mem_personal" cols="124" rows="10" class="full" element-name="개인정보수집동의" readonly="">
							개인정보의 수집범위
							다니엘성형외과의원은(는) 별도의 회원가입 절차 없이 대부분의 콘텐츠에 자유롭게 접근할 수 있습니다. 다니엘성형외과의원의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.
							1) 회원 가입시 수집하는 개인정보의 범위
							- 필수항목 : 희망 ID, 비밀번호, 이름, 닉네임
							- 선택항목 : 이메일주소, 이메일 수신 여부, SMS 수신여부, 정보공개여부, 휴대폰번호
							개인정보의 수집 및 이용 목적
							① 다니엘성형외과의원은(는) 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공하기 위하여 다음과 같은 목적으로 개인정보를 수집하고 있습니다.
							- 이름, 아이디, 비밀번호, 닉네임 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용
							- 이메일주소, 이메일 수신여부, SMS 수신여부, 휴대폰 번호: 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보의 안내
							- 주소: 경품과 쇼핑 물품 배송에 대한 정확한 배송지의 확보
							- 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료
							② 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.
							개인정보의 보유기간 및 이용기간
							① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
							- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.
							- 계약 또는 청약철회 등에 관한 기록 : 5년
							- 대금결제 및 재화등의 공급에 관한 기록 : 5년
							- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
							② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 다니엘성형외과의원은(는) 지체없이 그 열람,확인 할 수 있도록 조치합니다 
							필수 개인정보 수집을 동의하지 않는 경우
							① 귀하의 개인정보 수집을 거부할 수 있는 권리가 있으며 이 경우 당사의 회원전용 서비스 또는 고객 문의사항에 대한 답변이 필수인 코너를 이용하는데 있어 회원 가입 또는 게시물 등록이 불가능 할 수 있습니다.
							② 필수 정보가 아닌 선택 정보의 경우 개인정보 수집에 동의하지 않을 수 있으며 서비스 이용에 제한은 없습니다.
						</textarea>
						<p>
							<input type="checkbox" id="agree1" name="agree" value="Y" checked="checked">
							<label for="agree">개인정보취급방침에 동의합니다.</label>
						</p>
					</div>
					 
				
					<!-- 게시판 버튼 시작 -->
					<div class="btn-group-center">
						<div class="inner">
							<input type="submit" class="btn btn-submit" style="width:100px;height:36px;line-height:36px;cursor:pointer;" value="글쓰기">
							<button type="button" class="btn btn-cancel" onclick="location.href='${pageContext.request.contextPath}/m/menu09_02'">취소</button>	
						</div>
					</div>
					<!-- 게시판 버튼 끝 -->
				
					<script type="text/javascript" src="/lib/js/board.js"></script>
				
				</div>
			</form>
			
		</section>
	
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 시작 -->
		<jsp:include page="../include/mFooter.jsp"></jsp:include>
		<!-- 전체 페이지 오시는길(오시는길, 진료시간 안내, 상담문의, footer) 끝 (style.layout.css) -->
		
	</div>
	
	<jsp:include page="../include/mQuickInquire.jsp"></jsp:include>
</body>
</html>