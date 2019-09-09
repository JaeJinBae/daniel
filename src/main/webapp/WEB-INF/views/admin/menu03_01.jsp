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
				<h1>이벤트 목록</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>이벤트 관리&nbsp;&gt;&nbsp;</li>
					<li>이벤트 목록</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<form name="search" method="post" action="">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<input type="hidden" name="select_site_code" value="{$select_site_code}">
									<select name="select_key" id="select_key" class="search_sel"><option value="title">전체</option></select>	
									<input type="text" name="input_key" class="search_t_box" value="">
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div>
			
						<form name="event_list" id="event_list" method="post" action="event_list_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="total" value="36">
			
							<table class="list_table" cellpadding="0">
								<colgroup>
									<col width="4%">
			                        <col width="7%">
									<col width="20%">
			                        <col width="10%">
			                        <col width="20%">
									<col width="10%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
			                        <th>출력유무</th>
									<th>이벤트명</th>
			                        <!--th>문의목록</th-->
									<th>이벤트일자</th>
									<th>등록일자</th>
								</tr>
			
								
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="49"></td>
                                       <td><img src="/admin/assets/img/ck_img_on.png" class="delflag cursor" id="delflag_49" onclick="vevent_it('delflag', '49')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=49&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190901_B1FC01146E4F1FFB.jpg" height="100px" "="">
			가을, 다니엘이 추천하는 상품</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=49', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=49&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-09-02 ~ 2019-11-30</a></td>
                                       <td>2019-09-01</td>
								</tr>

                   
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="48"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="delflag cursor" id="delflag_48" onclick="vevent_it('delflag', '48')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=48&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190829_371EF969949312B8.jpg" height="100px" "="">
			이벤트 테스트</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=48', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=48&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-08-28 ~ 2019-08-30</a></td>
                                       <td>2019-08-29</td>
								</tr>

                   
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="46"></td>
                                       <td><img src="/admin/assets/img/ck_img_on.png" class="delflag cursor" id="delflag_46" onclick="vevent_it('delflag', '46')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=46&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190704_611DFF2291F5EF07.png" height="100px" "="">
			여름, 다니엘이 추천하는 상품</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=46', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=46&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-06-28 ~ 2019-08-31</a></td>
                                       <td>2019-06-28</td>
								</tr>

                   
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="45"></td>
                                       <td><img src="/admin/assets/img/ck_img_on.png" class="delflag cursor" id="delflag_45" onclick="vevent_it('delflag', '45')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=45&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190613_04ED65B82CE96677.png" height="100px" "="">
			NEW 4세대 써마지 FLX</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=45', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=45&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-06-13 ~ 2019-07-31</a></td>
                                       <td>2019-06-13</td>
								</tr>

                   
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="44"></td>
                                       <td><img src="/admin/assets/img/ck_img_on.png" class="delflag cursor" id="delflag_44" onclick="vevent_it('delflag', '44')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=44&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190530_E127C00521356383.png" height="100px" "="">
			다니엘개원5주년 기념이벤트</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=44', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=44&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-06-01 ~ 2019-06-15</a></td>
                                       <td>2019-05-30</td>
								</tr>

                   
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="43"></td>
                                       <td><img src="/admin/assets/img/ck_img_on.png" class="delflag cursor" id="delflag_43" onclick="vevent_it('delflag', '43')"></td>
                                       <td><a href="event_form.html?mode=modify&amp;seq=43&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">
				<img src="/filedata/event/20190426_31405B23AD4D2F38.jpg" height="100px" "="">
			코레지 도입기념 이벤트</a></td>
                                       <!--<td><button type="button" class="btn_black" onClick="Layer_Popup('event_apply_list.html', 'type=&seq=select_key=&input_key=&search=&page=1');" >문의목록</button></td>-->
                                       <!--td><button type="button" class="btn_black" onClick="WinOpen('event_apply_list.html?event_seq=43', 'window','window',{WIDTH : 1200, HEIGHT : 600});" >문의목록</button></td-->
									<td><a href="event_form.html?mode=modify&amp;seq=43&amp;select_key=&amp;input_key=&amp;search=&amp;page=1">2019-04-26 ~ 2019-05-31</a></td>
                                       <td>2019-04-26</td>
								</tr>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="eventlist_it('delete')">선택삭제</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="eventlist_it('insert_form', 'select_key=&amp;input_key=&amp;search=&amp;page=1')">등록</button>
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