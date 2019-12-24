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
function userRegister(info){
	$.ajax({
		url:"${pageContext.request.contextPath}/join",
		type:"POST",
		contentType : "application/json; charset=UTF-8",
		data:JSON.stringify(info),
		dataType:"text",
		async:false,
		success:function(json){
			if(json == "ok"){
				alert("회원가입이 완료되었습니다. \n가입한 정보로 로그인하세요.");
				location.href='${pageContext.request.contextPath}/login';
			}else{
				alert("회원가입에 실패하였습니다. \n관리자에게 문의하세요.");
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function idchk(id){
	var dt;
	$.ajax({
		url:"${pageContext.request.contextPath}/id_duplicate_chk/"+id,
		type:"POST",
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		async:false,
		success:function(json){
			dt = json;
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	return dt;
}

$(function(){
	$("#btnIdCheck").click(function(){
		var id = $("#m_id").val();
		var idchk_res = idchk(id);
		
		if(idchk_res == "empty"){
			alert("사용가능한 아이디입니다.");
			$("input[name='m_id_check']").val("o");
		}else{
			alert("이미 사용중인 아이디입니다.");
			$("input[name='m_id_check']").val("x");
		}
	});
	
	$("#m_id").change(function(){
		$("input[name='m_id_check']").val("x");
	});
	
	$(".btn-submit").click(function(){
		var agree = $("#agree").prop("checked");
		var name = $("#m_name").val();
		var id = $("#m_id").val();
		var idConfirm = $("input[name='m_id_check']").val();
		var pw = $("#m_pass").val();;
		var pwConfirm = $("#m_repass").val();
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		var phone = phone1+"-"+phone2+"-"+phone3;
		var gender = $("input[name='m_sex']:checked").val();
		var email1 = $("#m_email1").val();
		var email2 = $("#m_email2").val();
		var email = email1+"@"+email2;
		
		if(agree == false){
			alert("개인정보취급방침 항목은 필수입니다.");
			return false;
		}
		if(name == ""){
			alert("이름 항목은 필수입니다.");
			return false;
		}
		if(id == ""){
			alert("아이디 항목은 필수입니다.");
			return false;
		}
		if(idConfirm == "x"){
			alert("아이디 중복확인을 진행하세요.");
			return false;
		}
		if(pw == ""){
			alert("비밀번호 항목은 필수입니다.");
			return false;
		}
		if(pw != pwConfirm){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		if(phone2 == ""){
			alert("휴대폰 항목은 필수입니다.");
			return false;
		}
		if(phone3 == ""){
			alert("휴대폰 항목은 필수입니다.");
			return false;
		}
		if(gender == ""){
			alert("성별 항목은 필수입니다.");
			return false;
		}
		if(email1 == ""){
			alert("이메일 항목은 필수입니다.");
			return false;
		}
		if(email2 == ""){
			alert("이메일 항목은 필수입니다.");
			return false;
		}
		
		var nd = new Date();
		var y = nd.getFullYear();
		var m = nd.getMonth()+1;
		m = (m>9?'':'0')+m;
		var d = nd.getDate();
		d = (d>9?'':'0')+d;
		var regdate = y+"-"+m+"-"+d;
		
		var info = {"name":name, "id":id, "pw":pw, "phone":phone, "gender":gender, "email":email, "regdate":regdate};
		userRegister(info);
	});
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
			<div id="sub-visual" data-menu="로그인">
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
							<ul>
								<jsp:include page="../include/pcBreadCrumb.jsp"></jsp:include>				
							</ul>
						</li>
						<li class="gnb">
							<button>회원가입 ▼</button>
						</li>
					</ul>
				</div>
			</div>
			<!-- BreadCrumb 끝 -->
			
			<!-- 타이틀 시작 -->
			<div class="board-titl">
				<h5>회원가입 ▼</h5>
			</div>
			<!-- 타이틀 끝 -->
			
			<div id="join-form">
				<ul class="inner">
					<li class="private">
						<p>
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
							② 필수 정보가 아닌 선택 정보의 경우 개인정보 수집에 동의하지 않을 수 있으며 서비스 이용에 제한은 없습니다.			
						</p>
						<input type="checkbox" name="agree" id="agree" value="Y" checked="checked">
						<label for="agree">개인정보 취급방침에 동의합니다.</label>
					</li>
					<li class="join-form">
						<p><b>*</b> 표시는 필수 입력 사항입니다.</p>
								
						<legend>개인정보입력</legend>
						<!-- form join -->
						<form name="member" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/join">
							<input type="hidden" name="data_array" value="Y">
							<input type="hidden" name="mode" value="insert">
							<input type="hidden" name="seq" value="">
							<input type="hidden" name="member_seq" value="">
							<input type="hidden" name="distinction" value="proc">
							<input type="hidden" name="backpage" value="/join">
							<input type="hidden" name="nicechk" value="0">
					
							<table class="join-insert-form">
								<colgroup>
									<col style="width:160px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>이름<i class="star">*</i></th>
										<td>
											<input type="text" id="m_name" name="m_name" class="default" value="" valid="required" element-name="이름">
											<p class="cap">* 실명을 사용해 주세요.</p>
										</td>
									</tr>
									<tr>
										<th>아이디<i class="star">*</i></th>
										<td>
											<input type="text" id="m_id" name="m_id" class="default" maxlength="13" valid="required,id_pw" element-name="아이디">
											<button type="button" id="btnIdCheck">아이디 중복확인</button>
		
											<p class="cap">* 영문으로 시작하는 영문소문자, 영문소문자+숫자4~13자 입력해주세요.</p>
											<input type="hidden" name="m_id_check" value="x">
											<input type="hidden" name="m_id_hidden">
										</td>
									</tr>
									<tr>
										<th>비밀번호<i class="star">*</i></th>
										<td>
											<input type="password" id="m_pass" name="m_pass" class="default" maxlength="13" valid="required,id_pw" element-name="비밀번호">
											<p class="cap">* 영문자, 영문자+숫자를 4~13자 입력해주세요.</p>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인<i class="star">*</i></th>
										<td><input type="password" id="m_repass" name="m_repass" class="default" maxlength="13" valid="required,compare-m_pass" element-name="비밀번호 확인"></td>
									</tr>
									<tr>
										<th>휴대폰<i class="star">*</i></th>
										<td class="select_wrap">
											<select name="phone1" id="phone1" title="휴대전화의 국번"><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select> -
											<input type="text" id="phone2" name="phone2" title="휴대폰의 앞 4자리" maxlength="4" value="" valid="required,number" element-name="휴대전화"> -
											<input type="text" id="phone3" name="phone3" title="휴대폰의 앞 4자리" maxlength="4" value="" valid="required,number" element-name="휴대전화">
										</td>
									</tr>
									<tr>
										<th>성별<i class="star">*</i></th>
										<td>
											<input type="radio" name="m_sex" id="m_sex1" value="m" valid="required" element-name="성별"> <label for="m_sex1"><i></i>남자</label>&nbsp;&nbsp;&nbsp;
											<input type="radio" name="m_sex" id="m_sex2" value="f" checked="checked" valid="required" element-name="성별"> <label for="m_sex2"><i></i>여자</label>&nbsp;&nbsp;&nbsp;					</td>
									</tr>
									<tr>
										<th>E-mail<i class="star">*</i></th>
										<td class="select_wrap">
											<input type="text" name="m_email1" id="m_email1" class="half" maxlength="13" value="" valid="required" element-name="이메일"> @
					
											<input type="text" name="m_email2" id="m_email2" class="half" maxlength="13" title="이메일계정의 아이디" value="" valid="required" element-name="이메일">
					
											<select name="m_emailcode" id="m_emailcode" title="이메일의 계정" class="half"><option value="" selected="">직접입력</option><option value="EM01">naver.com</option><option value="EM02">daum.net</option><option value="EM03">gmail.com</option><option value="EM04">yahoo.co.kr</option><option value="EM05">yahoo.com</option><option value="EM06">nate.com</option><option value="EM07">paran.com</option><option value="EM08">google.com</option><option value="EM09">empas.com</option><option value="EM10">hotmail.com</option><option value="EM11">msn.com</option><option value="EM12">korea.com</option><option value="EM13">dreamwiz.com</option><option value="EM14">hanafos.com</option><option value="EM15">freechal.com</option><option value="EM16">chol.com</option><option value="EM17">empal.com</option><option value="EM18">lycos.com</option><option value="EM19">netian.com</option></select>
											<p class="cap">* 비밀번호를 잊어버렸을 때, 임시비밀번호가 발송될 메일입니다.</p>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
						<!-- form end -->
					</li>
				</ul>
			</div>
				
			<!-- 게시판 버튼 시작 -->
			<div class="btn-group-center">
				<div class="inner">
					<button type="button" class="btn btn-submit">회원가입</button>
					<button type="button" class="btn btn-cancel" onclick="location.href='${pageContext.request.contextPath}/'">취소</button>
				</div>
			</div>
			<!-- 게시판 버튼 끝 -->
		
			<form name="form_chk" method="post">
				<input type="hidden" name="m" value="checkplusSerivce">
				<input type="hidden" name="EncodeData" value="">
			</form>
			
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