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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/style_admin.css"><!-- @1 스타일 초기화		**삭제/수정금지** -->
<!-- ********************************************플러그인********************************************* -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script><!-- #1 1.12.4  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.1.js"></script><!-- #jquery UI  -->
<!-- ************************************************************************************************* -->

<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<style>
#updateRegisterWrap{
	width: 1000px;
	margin-bottom: 20px;
	border: 1px solid lightgray;
}
#formRegister{
	display:none;
}
#upadd_top_tab_wrap{
	width: 100%;
	background: #e9e9e9;
}
#upadd_top_tab_wrap > ul{
	width: 100%;
	overflow: hidden;
	padding: 5px 5px 0px 5px;
}
#upadd_top_tab_wrap > ul > li{
	background: #f6f6f6;
	float: left;
	padding: 7px 12px;
	margin-right: 3px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	cursor: pointer;
	border: 1px solid lightgray;
}
.active_upadd_top_tab{
	background: #007fff !important;
	color: #ffffff;
}
.form1{
	padding: 15px;
}
.formTableWrap{
	
}
.formTableWrap > table{
	border-collapse: collapse;
}
.formTableWrap > table tr > td{
	border: 1px solid lightgray;
	padding:10px;
}
.t_title{
	width: 100px;
	text-align: center;
}
.formTableWrap > table tr > td > input{
	width: 170px;
}
.upAddformTableBtnWrap{
	width: 100%;
	text-align: center;
	margin-top: 15px;
}
.upAddformTableBtnWrap > input, .upAddformTableBtnWrap > button{
	background: #f6f6f6;
	padding: 5px 10px;
	border: 1px solid lightgray;
	cursor: pointer;
}
</style>
<script>
$(function(){
	
});
</script>

</head>
<body>
<div id="Mask"></div>
<div id="wrap" class="body_main">
	<div id="container">
		<div id="admin_left">
			<jsp:include page="include/leftMenu.jsp"></jsp:include><!-- 왼쪽 메뉴 -->
		</div>

		<div id="admin_right">
			<jsp:include page="include/rightTop.jsp"></jsp:include><!-- 오른쪽 상단 -->
			<div class="naviText_area">
				<h1>시술 카테고리 관리</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 관리&nbsp;&gt;&nbsp;</li>
					<li>예약 환경설정</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<table class="write_table">
					<colgroup>
						<col width="11%">
						<col width="*">
					</colgroup>
					<tr class="cont">
						<td class="title">월요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr class="cont">
						<td class="title">화요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr class="cont">
						<td class="title">수요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr class="cont">
						<td class="title">목요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr class="cont">
						<td class="title">금요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr class="cont">
						<td class="title">토요일 진료시간</td>
						<td>
							<select name="start_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="start_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
							&nbsp;~&nbsp;
							<select name="end_hour">
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
							</select>&nbsp;:&nbsp;
							<select name="end_minute">
								<option value="0">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
				</table>
				<div class="btn_area">
					<p class="btn_left">
						<button type="button" class="btn_gray">리스트</button>
					</p>
					<p class="btn_right">
						<button type="button" class="btn_black">수정</button>
						<button type="button" class="btn_gray">취소</button>
					</p>
				</div>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

</body>
</html>