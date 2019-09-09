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
			
			<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js" type="text/javascript"></script>
			
			<div class="main_bottom_area">
				<div class="write_area">
					<div class="write_box">
			
						<form name="eventlist" id="eventlist" method="post" enctype="multipart/form-data" action="event_proc.php">
							<input type="hidden" name="data_array" value="Y">
							<input type="hidden" name="mode" value="modify">
							<input type="hidden" name="seq" value="48">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="m_seq" value="">
			
							<table class="write_table" cellpadding="0">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">제목</td>
									<td><input type="text" class="w_form_m" name="title" id="title" value="이벤트 테스트" valid="required" element-name="제목"></td>
								</tr>
								<tr class="cont">
									<td class="title">이벤트 기간</td>
			                        <td>
			                            <input type="text" class="w_form_s" name="start_date" id="start_date" readonly="" onclick="jCal('start_date')" value="2019-08-28" valid="required" element-name="시작일자">~
			                            <input type="text" class="w_form_s" name="end_date" id="end_date" readonly="" onclick="jCal('end_date', {Compare:'start_date'})" value="2019-08-30" valid="required" element-name="종료일자">
			                        </td>
								</tr>
								<tr class="cont">
									<td class="title">내용</td>
									<td><textarea id="content" name="content" valid="editor-content" element-name="내용" style="visibility: hidden; display: none;"></textarea>
									</td>
								</tr>
								<tr class="cont">
									<td class="title">출력유무</td>
									<td><select name="delflag" id="delflag" class="search_sel"><option value="Y">출력함</option><option value="N" selected="">출력안함</option></select></td>
								</tr>
								
								<tr class="cont">
									<td class="title">목록 썸네일 이미지</td>
									<td>
										<img src="/filedata/event/20190829_371EF969949312B8.jpg" height="100px" "="">
									
										<div id="file_1193">
											<a href="javascript:;" onclick="eventlist_it('download', '1193')">썸네test.jpg</a>
											<img src="/admin/assets/img/icon_x.png" class="vimg cursor" onclick="eventlist_it('attach_del', '1193')">
											<br>
										</div>
							
									</td>
								</tr>
										
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="eventlist_it('list', 'select_key=&amp;input_key=&amp;search=&amp;page=1')">리스트</button>
						</p>
			
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="eventlist_it('submit')">수정</button>
			
							<button type="button" class="btn_red" onclick="eventlist_it('each_delete', 'select_key=&amp;input_key=&amp;search=&amp;page=1&amp;seq=48')">삭제</button>
							<button type="button" class="btn_gray" onclick="eventlist_it('reset', 'select_key=&amp;input_key=&amp;search=&amp;page=1')">취소</button>
						</p>
					</div>
			
				</div>
			</div>
			<!-- main_bottom_area end -->
			<script>
			    $(function(){
			        CKEDITOR.replace('content', {width:'100%', height:'300px'});
			    });
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