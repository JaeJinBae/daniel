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
				<h1>시술&수술시주의사항</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리&nbsp;&gt;&nbsp;</li>
					<li>시술&수술시주의사항</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<div class="top-left"><input type="radio" name="radio_key" id="radio_key1" value="" checked="checked"> <label for="radio_key1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key2" value="동안·탄력 클리닉"> <label for="radio_key2"><i></i>동안·탄력 클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key3" value="레이저클리닉"> <label for="radio_key3"><i></i>레이저클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key4" value="흉터클리닉"> <label for="radio_key4"><i></i>흉터클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key5" value="눈·코 성형"> <label for="radio_key5"><i></i>눈·코 성형</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key6" value="프리미엄 쁘띠클리닉"> <label for="radio_key6"><i></i>프리미엄 쁘띠클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key7" value="체형클리닉"> <label for="radio_key7"><i></i>체형클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio_key" id="radio_key8" value="두피클리닉"> <label for="radio_key8"><i></i>두피클리닉</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			
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
							<input type="hidden" name="Scod" value="BRD05">
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
								<tr class="cont">
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
									<td><input type="checkbox" name="seq_list[]" value="2006"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2006" onclick="vboard_it('delflag', '2006')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2006" onclick="vboard_it('is_main', '2006')"></td>
									<td>12</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2006&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												<b>[동안·탄력 클리닉]</b> 리프팅레이저
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-11</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>143</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2005"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2005" onclick="vboard_it('delflag', '2005')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2005" onclick="vboard_it('is_main', '2005')"></td>
									<td>11</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2005&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												<b>[동안·탄력 클리닉]</b> 안면거상/이마내시경거상술
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-10</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>171</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2004"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2004" onclick="vboard_it('delflag', '2004')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2004" onclick="vboard_it('is_main', '2004')"></td>
									<td>10</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2004&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												<b>[동안·탄력 클리닉]</b> 실리프팅
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-10</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>145</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2003"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2003" onclick="vboard_it('delflag', '2003')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2003" onclick="vboard_it('is_main', '2003')"></td>
									<td>9</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2003&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												<b>[동안·탄력 클리닉]</b> 광채지방이식
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-09</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>151</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2002"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2002" onclick="vboard_it('delflag', '2002')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2002" onclick="vboard_it('is_main', '2002')"></td>
									<td>8</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2002&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">
												<b>[동안·탄력 클리닉]</b> 상안검/하안검
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-08</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>133</td>
								</tr>
							
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2001"></td>
									<td><img src="/admin/assets/img/ck_img_on.png" class="cursor vimg" id="delflag_2001" onclick="vboard_it('delflag', '2001')"></td>
                                       <td><img src="/admin/assets/img/ck_img_none.png" class="cursor vimg" id="ismain_2001" onclick="vboard_it('is_main', '2001')"></td>
									<td>7</td>
									<td>
										<a href="board_form.html?mode=modify&amp;seq=2001&amp;select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1">
											<p class="title">	
												<b>[레이저클리닉]</b> 색소레이저
											</p>
										</a>
									</td>
									<td>theweb</td>
									<td>2018-10-02</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>172</td>
								</tr>	
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="board_it('delete')">선택삭제</button>
							<button type="button" class="btn_gray" onclick="board_it('tap_change', 'BRD05')">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="board_it('insert_form', 'select_key=&amp;input_key=&amp;search=&amp;Scod=BRD05&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1')">등록</button>
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