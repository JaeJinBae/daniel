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
				<h1>자필후기</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>자필후기</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<div class="top-left"></div>
			
							<form name="search" method="post" action="" onsubmit="return search_it(this)">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel"><option value="m_id|m_name|b_content">전체</option><option value="m_id">아이디</option><option value="m_name">이름</option><option value="b_content">내용</option></select>						<input type="text" name="input_key" class="search_t_box" value="">
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div>
			
						<form name="board" id="board" method="post" action="board_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="Scod" value="BRD22">
							<input type="hidden" name="radio_key" value="">
			
							<table class="list_table" cellpadding="0">
								<colgroup>
									<col width="3%">
									<col width="5%">
			                        <col width="6%">
									<col width="3%">
									<col width="*">
									<col width="10%">
									<col width="10%">
									<col width="5%">
									<col width="5%">
								</colgroup>
								<tbody><tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>사용유무</th>
			                        <th>메인노출유무</th>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>파일</th>
									<th>조회</th>
								</tr>
			
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2102"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2102" onclick="vboard_it('delflag', '2102')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2102" onclick="vboard_it('is_main', '2102')"></td>
									<td>23</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2102&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												 [자필후기] 여드름과 여드름흉터, 주근깨 치료 후...
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2019-07-15</td>
									<td></td>
									<td>22</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2101"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2101" onclick="vboard_it('delflag', '2101')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2101" onclick="vboard_it('is_main', '2101')"></td>
									<td>22</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2101&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												 [자필후기] 눈밑기미와 피부 흉터치료 후기입니다.
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2019-07-15</td>
									<td></td>
									<td>15</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2093"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2093" onclick="vboard_it('delflag', '2093')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2093" onclick="vboard_it('is_main', '2093')"></td>
									<td>21</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2093&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												 [자필후기] 색소(잡티) 치료 후기입니다.
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2019-06-11</td>
									<td></td>
									<td>40</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2092"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2092" onclick="vboard_it('delflag', '2092')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2092" onclick="vboard_it('is_main', '2092')"></td>
									<td>20</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2092&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												 [자필후기] 동안/탄력 레이저 시술 후기입니다.
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2019-06-11</td>
									<td></td>
									<td>42</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2091"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2091" onclick="vboard_it('delflag', '2091')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2091" onclick="vboard_it('is_main', '2091')"></td>
									<td>19</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2091&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD22&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												 [자필후기] 색소(오타모반, 기미) 치료 후기입니다.
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2019-06-11</td>
									<td></td>
									<td>30</td>
								</tr>
											
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="board_it('delete')">선택삭제</button>
							<button type="button" class="btn_gray" onclick="board_it('tap_change', 'BRD22')">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="">등록</button>
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