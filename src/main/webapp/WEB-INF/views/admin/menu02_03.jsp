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
	var mon_s = Number("${mon_s}");
	var mon_s_h = parseInt(mon_s/60);
	var mon_s_m = mon_s%60;
	var mon_e = Number("${mon_e}");
	var mon_e_h = parseInt(mon_e/60);
	var mon_e_m = mon_e%60;
	
	var tue_s = Number("${tue_s}");
	var tue_s_h = parseInt(tue_s/60);
	var tue_s_m = tue_s%60;
	var tue_e = Number("${tue_e}");
	var tue_e_h = parseInt(tue_e/60);
	var tue_e_m = tue_e%60;
	
	var wed_s = Number("${wed_s}");
	var wed_s_h = parseInt(wed_s/60);
	var wed_s_m = wed_s%60;
	var wed_e = Number("${wed_e}");
	var wed_e_h = parseInt(wed_e/60);
	var wed_e_m = wed_e%60;
	
	var thu_s = Number("${thu_s}");
	var thu_s_h = parseInt(thu_s/60);
	var thu_s_m = thu_s%60;
	var thu_e = Number("${thu_e}");
	var thu_e_h = parseInt(thu_e/60);
	var thu_e_m = thu_e%60;
	
	var fri_s = Number("${fri_s}");
	var fri_s_h = parseInt(fri_s/60);
	var fri_s_m = fri_s%60;
	var fri_e = Number("${fri_e}");
	var fri_e_h = parseInt(fri_e/60);
	var fri_e_m = fri_e%60;
	
	var sat_s = Number("${sat_s}");
	var sat_s_h = parseInt(sat_s/60);
	var sat_s_m = sat_s%60;
	var sat_e = Number("${sat_e}");
	var sat_e_h = parseInt(sat_e/60);
	var sat_e_m = sat_e%60;
	
	$("select[name='mon_start_hour'] > option[value='"+mon_s_h+"']").prop("selected", true);
	$("select[name='mon_start_minute'] > option[value='"+mon_s_m+"']").prop("selected", true);
	$("select[name='mon_end_hour'] > option[value='"+mon_e_h+"']").prop("selected", true);
	$("select[name='mon_end_minute'] > option[value='"+mon_e_m+"']").prop("selected", true);
	
	$("select[name='tue_start_hour'] > option[value='"+tue_s_h+"']").prop("selected", true);
	$("select[name='tue_start_minute'] > option[value='"+tue_s_m+"']").prop("selected", true);
	$("select[name='tue_end_hour'] > option[value='"+tue_e_h+"']").prop("selected", true);
	$("select[name='tue_end_minute'] > option[value='"+tue_e_m+"']").prop("selected", true);
	
	$("select[name='wed_start_hour'] > option[value='"+wed_s_h+"']").prop("selected", true);
	$("select[name='wed_start_minute'] > option[value='"+wed_s_m+"']").prop("selected", true);
	$("select[name='wed_end_hour'] > option[value='"+wed_e_h+"']").prop("selected", true);
	$("select[name='wed_end_minute'] > option[value='"+wed_e_m+"']").prop("selected", true);
	
	$("select[name='thu_start_hour'] > option[value='"+thu_s_h+"']").prop("selected", true);
	$("select[name='thu_start_minute'] > option[value='"+thu_s_m+"']").prop("selected", true);
	$("select[name='thu_end_hour'] > option[value='"+thu_e_h+"']").prop("selected", true);
	$("select[name='thu_end_minute'] > option[value='"+thu_e_m+"']").prop("selected", true);
	
	$("select[name='fri_start_hour'] > option[value='"+fri_s_h+"']").prop("selected", true);
	$("select[name='fri_start_minute'] > option[value='"+fri_s_m+"']").prop("selected", true);
	$("select[name='fri_end_hour'] > option[value='"+fri_e_h+"']").prop("selected", true);
	$("select[name='fri_end_minute'] > option[value='"+fri_e_m+"']").prop("selected", true);
	
	$("select[name='sat_start_hour'] > option[value='"+sat_s_h+"']").prop("selected", true);
	$("select[name='sat_start_minute'] > option[value='"+sat_s_m+"']").prop("selected", true);
	$("select[name='sat_end_hour'] > option[value='"+sat_e_h+"']").prop("selected", true);
	$("select[name='sat_end_minute'] > option[value='"+sat_e_m+"']").prop("selected", true);
	
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
				<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu02_03update">
					<table class="write_table">
						<colgroup>
							<col width="11%">
							<col width="*">
						</colgroup>
						<tr class="cont">
							<td class="title">월요일 진료시간</td>
							<td>
								<select name="mon_start_hour">
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
								<select name="mon_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="mon_end_hour">
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
								<select name="mon_end_minute">
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
								<select name="tue_start_hour">
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
								<select name="tue_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="tue_end_hour">
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
								<select name="tue_end_minute">
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
								<select name="wed_start_hour">
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
								<select name="wed_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="wed_end_hour">
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
								<select name="wed_end_minute">
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
								<select name="thu_start_hour">
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
								<select name="thu_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="thu_end_hour">
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
								<select name="thu_end_minute">
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
								<select name="fri_start_hour">
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
								<select name="fri_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="fri_end_hour">
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
								<select name="fri_end_minute">
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
								<select name="sat_start_hour">
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
								<select name="sat_start_minute">
									<option value="0">00분</option>
									<option value="10">10분</option>
									<option value="20">20분</option>
									<option value="30">30분</option>
									<option value="40">40분</option>
									<option value="50">50분</option>
								</select>
								&nbsp;~&nbsp;
								<select name="sat_end_hour">
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
								<select name="sat_end_minute">
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
							<input type="submit" value="수정" class="btn_black">
							<button type="button" class="btn_gray">취소</button>
						</p>
					</div>
				</form>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

</body>
</html>