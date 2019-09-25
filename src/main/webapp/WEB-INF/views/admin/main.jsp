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
<script>
$(function(){
	$(function(){
		$.ajaxSetup({cache:false});
	})
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
				<h1>기본환경설정</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li></li>
					<li></li>
				</ul>
			</div>

			<script type="text/javascript" src="https://www.google.com/jsapi"></script>
			<script type="text/javascript">
				google.load("visualization", "1", {packages:["corechart"]});
				google.setOnLoadCallback(drawChart);
			
				function drawChart() {
					
					var data = google.visualization.arrayToDataTable([["\ube0c\ub77c\uc6b0\uc838\ubcc4\ud1b5\uacc4","\uc811\uc18d\uc790"],["Chrome",41],["Gecko",19],["Mozilla",2],["MSIE 10.0",1],["MSIE 11",9],["MSIE 8",3],["MSIE 9",5],["Robot",2],["unknown",5]]),
						options = {
							title : '브라우져별통계',
							height : 350
						},
						chart = new google.visualization.PieChart(document.getElementById('log1'));
					chart.draw(data, options);
			
					var data2 = google.visualization.arrayToDataTable([["\uc2dc","\uc811\uc18d\uc790"],["00",16],["01",5],["02",7],["03",4],["04",3],["05",3],["06",1],["07",7],["08",4],["09",5],["10",12],["11",7],["12",11],["13",2],["14",0],["15",0],["16",0],["17",0],["18",0],["19",0],["20",0],["21",0],["22",0],["23",0]]),
						options2 = {
							title : '시간별통계',
							hAxis: {title: '시간', titleTextStyle: {color: 'red'}},
							height : 350
						},
						chart = new google.visualization.ColumnChart(document.getElementById('log2'));
					chart.draw(data2, options2);
				}
			</script><script src="https://www.google.com/uds/?file=visualization&amp;v=1&amp;packages=corechart" type="text/javascript"></script>
			<link href="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/ui+ko.css" type="text/css" rel="stylesheet">
			<script src="https://www.google.com/uds/api/visualization/1.0/36558b280aac4fa99ed8215e60015cff/format+ko,default+ko,ui+ko,corechart+ko.I.js" type="text/javascript"></script>
			<div class="main_bottom_area">
				<div class="board_area">
					<div class="bdr-wrap">
						<div class="b01 board_layout">
							<div class="board_top">
								<h2>온라인상담</h2>
								<a href="javascript:;" class="more_btn" onclick="">더보기 &gt;</a>
							</div>
							<table class="main_board">
								<colgroup>
									<col width="18%">
									<col width="*">
									<col width="25%">
									<col width="15%">
									<col width="13%">
								</colgroup>
								<tr>
									<th>이름</th>
									<th>처리상태</th>
									<th>등록일</th>
									<th>답변상태</th>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2504&amp;cate=">배은진</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2504&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-05</td>
									<td class="b_id">답변</td>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2502&amp;cate=">주진주</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2502&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-05</td>
									<td class="b_id">답변</td>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2501&amp;cate=">-</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2501&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-03</td>
									<td class="b_id">답변</td>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2500&amp;cate=">배수연</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2500&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-03</td>
									<td class="b_id">답변</td>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2499&amp;cate=">제미현</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2499&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-03</td>
									<td class="b_id">답변</td>
								</tr>
								<tr>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2498&amp;cate=">고수린</a></td>
									<td class="b_id"><a href="/admin/inquire/inquire_form.html?mode=modify&amp;seq=2498&amp;cate=">상담완료</a></td>
									<td class="b_id">2019-09-02</td>
									<td class="b_id">답변</td>
								</tr>					
							</table>
						</div>
					</div>
				</div>


				<div class="log_area">
					<div class="log_layout">
						<div class="log_top">
							<h2>2019년 09월 05일 - 브라우저별 접속 통계</h2>
							<a href="javascript:;" class="more_btn" onclick="">더보기 &gt;</a>
						</div>
						<div class="log1" id="log1"></div>
					</div>
					
					<div class="log_layout second">
						<div class="log_top">
							<h2>2019년 09월 05일 - 시간별 접속 통계</h2>
							<a href="javascript:;" class="more_btn" onclick="location.href='/admin/analytics/analytics_traffic_list.html?select_key=time'">더보기 &gt;</a>
						</div>
						<div class="log2" id="log2"></div>
					</div>	
				</div><!-- log_area 끝 -->
			</div><!-- main_bottom_area 끝 -->
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->


</body>
</html>