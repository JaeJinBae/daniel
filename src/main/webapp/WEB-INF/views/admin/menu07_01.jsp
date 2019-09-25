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
<!-- jQuery UI CSS파일 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- ************************************************************************************************* -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.admin.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.default.js"></script><!-- # 필수 함수 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/function.validate.js"></script><!-- # 필수 함수 -->
<link href="https://ajax.googleapis.com/ajax/static/modules/gviz/1.0/core/tooltip.css" rel="stylesheet" type="text/css">
<script src="https://www.google.com/uds/?file=visualization&amp;v=1&amp;packages=corechart" type="text/javascript"></script>
<link href="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/ui+ko.css" type="text/css" rel="stylesheet">
<script src="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/format+ko,default+ko,ui+ko,corechart+ko.I.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<style type="text/css">
.search_span{
	display: none;
}
#time_span{
	display: inline-block;
}
</style>
<script>
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);

function drawChart(){
	var data = google.visualization.arrayToDataTable([["\ub144\ubcc4","\uc811\uc18d\uc790"],["2018",31411],["2019",49826]]);
	var options = {
		  title: '년별별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_time_chart(){
	var data = google.visualization.arrayToDataTable([["\uc2dc","\uc811\uc18d\uc790"],["00",5],["01",6],["02",6],["03",3], ["04",0],["05",1],
													["06",4], ["07",7],["08",5],["09",10],["10",8],["11",11],["12",7],["13",9],["14",9],
													["15",10],["16",11],["17",0],["18",0],["19",0],["20",0],["21",0],["22",0],["23",0]]);
	var options = {
		  title: '시간별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_date_chart(){
	var data = google.visualization.arrayToDataTable([["\uc77c\uc790\ubcc4","\uc811\uc18d\uc790"],["2019-09-01",140],["2019-09-02",268],["2019-09-03",177],["2019-09-04",159],
													["2019-09-05",161],["2019-09-06",161],["2019-09-07",147],["2019-09-08",117],["2019-09-09",246],["2019-09-10",156],
													["2019-09-11",138],["2019-09-12",128],["2019-09-13",104],["2019-09-14",104],["2019-09-15",104],["2019-09-16",208],
													["2019-09-17",192],["2019-09-18",169],["2019-09-19",184],["2019-09-20",193],["2019-09-21",138],["2019-09-22",119],
													["2019-09-23",204],["2019-09-24",172],["2019-09-25",112]]);
	var options = {
		  title: '날짜별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_dayofweek_chart(){
	var data = google.visualization.arrayToDataTable([["\uc694\uc77c","\uc811\uc18d\uc790"],["\uc77c",480],["\uc6d4",926],["\ud654",697],
													["\uc218",580],["\ubaa9",473], ["\uae08",458],["\ud1a0",389]]);
	var options = {
		  title: '요일별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_month_chart(){
	var data = google.visualization.arrayToDataTable([["\uc6d4\ubcc4","\uc811\uc18d\uc790"],["2018-06",4],["2018-07",3447],
													["2018-08",5920],["2018-09",5221],["2018-10",5508],["2018-11",5870],["2018-12",5441]]);
	var options = {
		  title: '월별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
function draw_year_chart(){
	var data = google.visualization.arrayToDataTable([["\ub144\ubcc4","\uc811\uc18d\uc790"],["2018",31411],["2019",49834]]);
	var options = {
		  title: '년도별통계'
	};
	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_browser_chart(){
	var data = google.visualization.arrayToDataTable([["\ube0c\ub77c\uc6b0\uc838\ubcc4\ud1b5\uacc4","\uc811\uc18d\uc790"],
													["Chrome",54], ["FireFox",3],["Gecko",29],["Mozilla",2],["MSIE 10.0",2],
													["MSIE 11",11], ["MSIE 8",2],["MSIE 9",3],["Robot",1],["unknown",7]]);
	var options = {
		  title: '브라우저별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}

function draw_os_chart(){
	var data = google.visualization.arrayToDataTable([["OS\ud1b5\uacc4","\uc811\uc18d\uc790"],["Linux",46],
													["MAC",29],["Mozilla",8], ["Robot",3],["unknown",7],["Windows 7",14],
													["Windows 8",2], ["Windows Vista",1],["Windows XP",4]]);
	var options = {
		  title: 'OS별통계'
	};
	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	
	chart.draw(data, options);
}
$(function(){
	$(".search_t_box100").datepicker({
		changeMonth: true, 
		changeYear: true,
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yy-mm-dd"
    });
	 
	$("#select_key").change(function(){
		var sel_type = $(this).val();
		$(".search_span").css("display", "none");
		$("#"+sel_type+"_span").css("display", "inline-block");
	});
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
				<h1>트래픽분석</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>마케팅분석&nbsp;&gt;&nbsp;</li>
					<li>트래픽분석</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top" style="margin-right:100px">
							<form name="search" method="post" action="" onsubmit="">
			
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel">
										<option value="time">시간별통계</option>
										<option value="day">일자별통계</option>
										<option value="weekend">요일별통계</option>
										<option value="month">월별통계</option>
										<option value="year">년별통계</option>
										<option value="browser">브라우져별통계</option>
										<option value="os">OS통계</option>
									</select>
									<!-- 시간별통계 -->
									<span id="time_span" class="search_span">
										<input type="text" name="start_time_key" id="start_time_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_time_key" id="end_time_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 일자별통계 -->
									<span id="day_span" class="search_span">
										<input type="text" name="start_day_key" id="start_day_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_day_key" id="end_day_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 요일별통계 -->
									<span id="weekend_span" class="search_span">
										<input type="text" name="start_weekend_key" id="start_weekend_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_weekend_key" id="end_weekend_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- 월별통계 -->
									<span id="month_span" class="search_span">
										<select name="start_monthy_key" id="start_monthy_key" class="search_sel_70">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
										</select>
										<select name="start_monthm_key" id="start_monthm_key" class="search_sel_70">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>~
										<select name="end_monthy_key" id="end_monthy_key" class="search_sel_70">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
										</select>							
										<select name="end_monthm_key" id="end_monthm_key" class="search_sel_70">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>		
									</span>
			
									<!-- 년별통계 -->
									<span id="year_span" class="search_span">
										<select name="start_year_key" id="start_year_key" class="search_sel">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
										</select>							~
										<select name="end_year_key" id="end_year_key" class="search_sel">
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
										</select>
									</span>
			
									<!-- 브라우져별통계 -->
									<span id="browser_span" class="search_span">
										<input type="text" name="start_browser_key" id="start_browser_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_browser_key" id="end_browser_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<!-- OS통계 -->
									<span id="os_span" class="search_span">
										<input type="text" name="start_os_key" id="start_os_key" class="search_t_box100" value="" autocomplete="off">~
										<input type="text" name="end_os_key" id="end_os_key" class="search_t_box100" value="" autocomplete="off">
									</span>
			
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div><br>
			
						<div id="chart_div" style="width:100%; height:600px;"></div>
					</div>
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