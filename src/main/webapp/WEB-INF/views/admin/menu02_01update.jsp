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
				<h1>시술 예약 목록</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 관리&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 목록</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<form name="search" method="post" action="" onsubmit="return search_it(this)">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
			
									정렬순서 : 
									<select name="select_order" id="select_order" class="search_sel"><option value="seq" selected="">기본 정렬</option><option value="r_date">예약일 정렬</option></select>						&nbsp;&nbsp;&nbsp;
			
									예약일 : 
									<input type="text" id="start_date" name="start_date" class="search_t_box" value="" readonly="" onclick="jCal('start_date')">
									<input type="text" id="end_date" name="end_date" class="search_t_box" value="" readonly="" onclick="jCal('end_date')">
									&nbsp;&nbsp;&nbsp;
			
									<select name="select_key" id="select_key" class="search_sel"><option value="r_name|r_phone|r_kind|r_state|r_content">전체</option><option value="r_name">이름</option><option value="r_phone">전화번호</option><option value="r_kind">상담분야</option><option value="r_state">처리상태</option><option value="r_content">문의내용</option><option value="r_memo">메모</option></select>						<input type="text" name="input_key" class="search_t_box" value="">
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div>
			
						<form name="reserve" id="reserve" method="post" action="reserve_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="total" value="147">
			
							<table class="list_table" cellpadding="0">
								<colgroup>
									<col width="4%">
									<col width="4%">
									<col width="5%">
									<col width="8%">
									<col width="6%">
									<col width="*">
									<col width="12%">
									<col width="7%">
									<col width="6%">
									<col width="8%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>번호</th>
									<th>이름</th>
									<th>연락처</th>
									<th>상담여부</th>
									<th>시술내역</th>
									<th>예약일자</th>
									<th>예약금액</th>
									<th>예약상태</th>
									<th>등록일</th>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="391"></td>
									<td>147</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">한예나</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01086618767</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">X</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">스킨케어 &gt; 트러블·모공 디톡스·아쿠아필 <strong>[50,000원]</strong><br></a></td>
									<td>2019-09-11 17:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">50,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=391&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-05</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="390"></td>
									<td>146</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">양다원</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01066689198</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">상담요망</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">윤곽성형주사 &gt; 윤곽주사 &gt; 윤곽주사 1cc <strong>[10,000원]</strong><br></a></td>
									<td>2019-09-06 12:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">10,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=390&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-03</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="389"></td>
									<td>145</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">양다원</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01066689198</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">상담요망</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">윤곽성형주사 &gt; 윤곽주사 &gt; 윤곽주사 1cc <strong>[10,000원]</strong><br></a></td>
									<td>2019-09-06 12:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">10,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=389&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-03</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="388"></td>
									<td>144</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">황정희</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01077402685</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">상담요망</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">필러 &gt; 리터치 2주내 0.5cc 미만 &gt; 윤곽주사 1cc <strong>[30,000원]</strong><br>성형보톡스 &gt; 사각턱 &gt; 사각턱 64u 정량 <strong>[60,000원]</strong><br>필러 &gt; 코필러 1cc 이내 &gt; 사각턱 64u 정량 <strong>[90,000원]</strong><br>필러 &gt; 턱필러 1cc 이내 &gt; 사각턱 64u 정량 <strong>[90,000원]</strong><br></a></td>
									<td>2019-09-05 10:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">270,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=388&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-03</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="387"></td>
									<td>143</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">하영희</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01051616154</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">상담요망</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">비만프로그램 &gt; 팻다운아르기닌 &gt; 팻다운아르기닌4회 <strong>[280,000원]</strong><br></a></td>
									<td>2019-09-04 11:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">280,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=387&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-02</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="386"></td>
									<td>142</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">하영희</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">01051616154</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">상담요망</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">비만프로그램 &gt; 팻다운아르기닌 &gt; 팻다운아르기닌4회 <strong>[280,000원]</strong><br></a></td>
									<td>2019-09-04 11:30</td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">280,000</a></td>
									<td><a href="reserve_form.html?mode=modify&amp;seq=386&amp;select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;page=1">예약완료</a></td>
									<td>2019-09-02</td>
								</tr>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="reserve_it('excel_all')">전체 Excel저장</button>
							<button type="button" class="btn_gray" onclick="reserve_it('excel', 'select_key=&amp;input_key=&amp;search=&amp;start_date=&amp;end_date=&amp;select_order=&amp;olds=0&amp;line=15')">Excel저장</button>
							<button type="button" class="btn_gray" onclick="reserve_it('delete')">선택삭제</button>
						</p>
						<p class="btn_right">
							<!--<button type="button" class="btn_black" onClick="reserve_it('insert_form', 'select_key=&input_key=&search=&start_date=&end_date=&select_order=&page=1')" >등록</button>-->
						</p>
					</div>
			
					<div class="board_paging no_print">
						<a href="javascript:;" class="direction">&lt;&lt;</a>
						<a href="javascript:;" class="direction">&lt;</a>
						<a href="javascript:;" class="on">1</a>
						<a href="">2</a>
						<a href="">3</a>
						<a href="">4</a>
						<a href="">5</a>
						<a href="">6</a>
						<a href="">7</a>
						<a href="">8</a>
						<a href="">9</a>
						<a href="">10</a>
						<a href="" class="direction">&gt;</a>
						<a href="" class="direction">&gt;&gt;</a>
					</div>
				</div>
			</div>
			<!-- main_bottom_area end -->
			
			<script type="text/javascript">
				$(function(){
					$("#selectall").click(function(){
						var checekd = $(this).attr("checked");
			
						$("#reserve input:checkbox").each(function(){
							var subchecked = $(this).attr("checked");
							if(subchecked != checekd){
								$(this).click();
							}
						});
					});
				});
			
				function tooltip_it($seq){
					if(!$seq)		return;
					var $JSON = {},
						$Obj = "tooltip_" + $seq;
			
					$.post("reserve_proc.php", {mode : "referer", seq : $seq}, function(data){
						$JSON = $.parseJSON(data);
					}).done(function(){
						$("#AjaxToolTip").remove();
						$("#Mask").after("<div id='AjaxToolTip' style='position:absolute;top:0;left:0;display:none;'></div>");
			
						tooltip_load($Obj, $JSON);
					});
				}
			
				function tooltip_load($Obj, $datas){
					var $content = "",
						$link = ($datas.REFERER == "직접입력 또는 즐겨찾기") ? "javascript:;" : $datas.REFERER,
						$target = ($datas.REFERER == "직접입력 또는 즐겨찾기") ? "" : "target='_blank'",
			
					$content = "<div class='spc-bbl' id='"+$Obj+"_tip'>";
						$content+= "<p><em>"+ $datas.IP +"</em> [<span><em>"+ $datas.DEVICE +"</em></span>]</p>";
						$content+= "<p><a href='"+ $link +"' "+ $target +">"+ $datas.REFERER +"</a></p>";
						$content+= "<button class='close-bbl cursor' onClick=\"tooltip_close()\">×</button>";
					$content+= "</div>";
			
					$("#AjaxToolTip").html($content).css({
						"position" : "absolute",
						"z-index" : -1
					}).show();
			
					setTimeout(function(){
						tooltip_position($Obj);
					}, 300);
				}
			
				function tooltip_position($Obj){
					var Obj_H = jChk_Position($Obj),
						Layer_H = $("#" + $Obj + "_tip").height(),
						Layer_W = $("#" + $Obj + "_tip").width() / 2;
			
					$("#AjaxToolTip").css({
						"position" : "absolute",
						"z-index" : 90000,
						"top" : (Obj_H.User_TOP - Layer_H - 30) + "px",
						"left" : (Obj_H.User_LEFT - Layer_W - 45) + "px",
						"background" : "#fff"
					}).show();
				}
			
				function tooltip_close(){
					$("#AjaxToolTip").remove();
				}
			</script>
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->
<script type="text/javascript">
	$(function(){
		var $current_page = (window.location.pathname),
			$current_form_page = $current_page.replace("_list", "_form"),
			$Scod = "BRD01",
			$Stpe = "SD01",
			$admin = "danielclinic",
			$pattern = /Scod=BRD01/;

		$(".left_menu > dl > dd > a").each(function(){

			var $list = $(this).attr("href"),
				$form = $list.replace("_list", "_form");

			if( ($current_page == $list) || ($current_page == $form) ){
				$(this).addClass("on").parents("dl").each(function(){
					$(this).children("dd").show();
				}).children("dt").children("a").addClass("on");

				var $menutext = $(this).parents("dl").children("dt").children("a").text();
				var $subtext = $(this).text();

				$(".naviText_area>h1").html( $(this).text());
				if($admin=="theweb" && $Stpe!=""){
					$(".naviText_area>h1").append( "("+$Stpe+")" );
				}
				$(".navi_area li:eq(1)").html( $(this).parents("dl").children("dt").children("a").text() + "&nbsp;&gt;&nbsp;" );
				$(".navi_area li:eq(2)").html( $(this).text() );
			}else if( $current_page == "/admin/login/mypage.html" ){
				$(".naviText_area>h1").html("정보수정");
				$(".navi_area li:eq(1)").html("정보수정");
			}else{
				if( $Scod && ($pattern.test($list)) ){
					$(this).addClass("on").parents("dl").each(function(){
						$(this).children("dd").show();
					}).children("dt").children("a").addClass("on");

					var $menutext = $(this).parents("dl").children("dt").children("a").text();
					var $subtext = $(this).text();

					$(".naviText_area>h1").html( $(this).text());
					if($admin=="theweb" && $Stpe!=""){
						$(".naviText_area>h1").append( "("+$Stpe+")" );
					}
					$(".navi_area li:eq(1)").html( $(this).parents("dl").children("dt").children("a").text() + "&nbsp;&gt;&nbsp;" );
					$(".navi_area li:eq(2)").html( $(this).text() );
				}
			}
			return;
		});
	});
</script>

</body>
</html>