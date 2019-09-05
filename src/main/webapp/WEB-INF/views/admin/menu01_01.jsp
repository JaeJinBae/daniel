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
				<h1>공지사항</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>게시판관리</li>
					<li>공지사항</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<div class="top-left">
								<input type="radio" name="radio_key" id="radio_key1" value="" checked="checked"> <label for="radio_key1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key2" value="공지"> <label for="radio_key2"><i></i>공지</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key3" value="이벤트"> <label for="radio_key3"><i></i>이벤트</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
			
							<form name="search" method="post" action="" onsubmit="return search_it(this)">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel">
										<option value="m_id|m_name|b_content">전체</option>
										<option value="m_id">아이디</option>
										<option value="m_name">이름</option>
										<option value="b_content">내용</option>
									</select>						
									<input type="text" name="input_key" class="search_t_box" value="">
									<input type="submit" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div><!-- board_top 끝 -->
			
						<form name="board" id="board" method="post" action="board_proc.php">
							<input type="hidden" name="mode" value="delete">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="search" value="">
							<input type="hidden" name="select_key" value="">
							<input type="hidden" name="input_key" value="">
							<input type="hidden" name="Scod" value="BRD01">
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
									<td><input type="checkbox" name="seq_list[]" value="2075"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="delflag_2075" onclick="vboard_it('delflag', '2075')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2075" onclick="vboard_it('is_main', '2075')"></td>
									<td><i class="ico notice">공지</i></td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 다니엘 성형외과 5월 워크샵 휴진 안내
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-05-07</td>
									<td></td>
									<td>165</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2036"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2036" onclick="vboard_it('delflag', '2036')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2036" onclick="vboard_it('is_main', '2036')"></td>
									<td><i class="ico notice">공지</i></td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 다니엘 성형외과 화요일 진료시간변경안내
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-02-15</td>
									<td></td>
									<td>5307</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="1947"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_1947" onclick="vboard_it('delflag', '1947')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_1947" onclick="vboard_it('is_main', '1947')"></td>
									<td><i class="ico notice">공지</i></td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 김지아 원장님께서 "컴패션 기업후원자의 밤&amp;...
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2018-07-06</td>
									<td><i class="ico file">첨부파일</i></td>
									<td>259</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="921"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_921" onclick="vboard_it('delflag', '921')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_921" onclick="vboard_it('is_main', '921')"></td>
									<td><i class="ico notice">공지</i></td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 다니엘 ★뇌병변 부모회 감사패 수여★
											</p>
										</a>
									</td>
									<td>최고관리자</td>
									<td>2018-03-26</td>
									<td></td>
									<td>342</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2110"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2110" onclick="vboard_it('delflag', '2110')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2110" onclick="vboard_it('is_main', '2110')"></td>
									<td>165</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 경남신문 의료칼럼 - 짧은 코 성형, 이것만 생각하자
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-09-02</td>
									<td></td>
									<td>1</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2109"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2109" onclick="vboard_it('delflag', '2109')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2109" onclick="vboard_it('is_main', '2109')"></td>
									<td>164</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 경남신문 의료칼럼 - 문신 제거를 위한 올바른 선택
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-08-19</td>
									<td></td>
									<td>1</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2108"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2108" onclick="vboard_it('delflag', '2108')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2108" onclick="vboard_it('is_main', '2108')"></td>
									<td>163</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 다니엘 성형외과 8월 진료안내
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-08-13</td>
									<td></td>
									<td>11</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2107"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2107" onclick="vboard_it('delflag', '2107')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2107" onclick="vboard_it('is_main', '2107')"></td>
									<td>162</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 경남신문 의료칼럼 - 남 흉 보기 전에 흉 지워야죠...
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-08-12</td>
									<td></td>
									<td>7</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2106"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2106" onclick="vboard_it('delflag', '2106')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2106" onclick="vboard_it('is_main', '2106')"></td>
									<td>161</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 경남신문 의료칼럼- 휴가철 피부 관리
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-08-05</td>
									<td></td>
									<td>6</td>
								</tr>
								<tr class="cont">
									<td><input type="checkbox" name="seq_list[]" value="2105"></td>
									<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2105" onclick="vboard_it('delflag', '2105')"></td>
                                       <td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2105" onclick="vboard_it('is_main', '2105')"></td>
									<td>160</td>
									<td>
										<a href="">
											<p class="title">
												<b>[공지]</b> 경남신문 의료칼럼 - 여드름·모공 흉터 원인과 개선
											</p>
										</a>
									</td>
									<td>다니엘성형외과</td>
									<td>2019-07-15</td>
									<td></td>
									<td>7</td>
								</tr>		
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray" onclick="board_it('delete')">선택삭제</button>
							<button type="button" class="btn_gray" onclick="board_it('tap_change', 'BRD01')">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black" onclick="board_it('insert_form', 'select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=1')">등록</button>
						</p>
					</div>
			
					<div class="board_paging no_print">
						<a href="javascript:;" class="direction">&lt;&lt;</a>
						<a href="javascript:;" class="direction">&lt;</a>
						<a href="javascript:;" class="on">1</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=2 ">2</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=3 ">3</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=4 ">4</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=5 ">5</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=6 ">6</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=7 ">7</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=8 ">8</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=9 ">9</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=10 ">10</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=11 " class="direction">&gt;</a>
						<a href="?select_key=&amp;input_key=&amp;search=&amp;Scod=BRD01&amp;sort=b_notice ASC, b_ref DESC, b_step ASC, seq DESC&amp;radio_key=&amp;page=17 " class="direction">&gt;&gt;</a>
					</div>
				</div>
			</div>
			
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