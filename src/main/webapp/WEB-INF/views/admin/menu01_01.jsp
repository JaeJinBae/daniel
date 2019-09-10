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
							<!-- <div class="top-left">
								<input type="radio" name="radio_key" id="radio_key1" value="all" checked="checked"> <label for="radio_key1"><i></i>전체</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key2" value="top_notice"> <label for="radio_key2"><i></i>공지</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="radio_key" id="radio_key3" value="normal_notice"> <label for="radio_key3"><i></i>일반</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div> -->
			
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
									<col width="4%">
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
								<c:if test="${pageMaker.cri.page == 1}">
									<c:if test="${fn:length(topList) != 0}">
										<c:forEach var="item" items="${topList}">
											<tr class="cont">
												<td><input type="checkbox" name="" value="${item.no}"></td>
												<c:choose>
													<c:when test="${item.use_state == 'o'}">
														<td>
															<img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2036">
														</td>
													</c:when>
													<c:otherwise>
														<td>
					                                     	<img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2036">
					                                     </td>
													</c:otherwise>
												</c:choose>
												<td>
			                                     	<img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2036">
			                                     </td>
												<td><i class="ico notice">공지</i></td>
												<td>
													<a href="${pageContext.request.contextPath}/admin/menu01_01read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><p class="title"> ${item.title}</p></a>
												</td>
												<td>${item.writer}</td>
												<td>${item.regdate}</td>
												<td></td>
												<td>${item.cnt}</td>
											</tr>	
										</c:forEach>
									</c:if>
								</c:if>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="8">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${list}">
												<tr class="cont">
													<td><input type="checkbox" name="" value="${item.no}"></td>
													<c:choose>
														<c:when test="${item.use_state == 'o'}">
															<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_on.png" class="cursor vimg" id="delflag_2036"></td>
														</c:when>
														<c:otherwise>
															<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2036"></td>
														</c:otherwise>
													</c:choose>
													<td><img src="${pageContext.request.contextPath}/resources/img/admin/ck_img_none.png" class="cursor vimg" id="ismain_2036"></td>
													<td><i class="ico notice">${num}</i></td>
													<td><a href="${pageContext.request.contextPath}/admin/menu01_01read${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}"><p class="title"> ${item.title}</p></a></td>
													<td>${item.writer}</td>
													<td>${item.regdate}</td>
													<td></td>
													<td>${item.cnt}</td>
												</tr>
												<c:set var="num" value="${num-1}"></c:set>	
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</form>
					</div>
			
					<div class="btn_area">
						<p class="btn_left">
							<button type="button" class="btn_gray">선택삭제</button>
							<button type="button" class="btn_gray">게시물이동</button>
						</p>
						<p class="btn_right">
							<button type="button" class="btn_black">등록</button>
						</p>
					</div>
			
					<!-- 페이징 시작 -->
					<div class="board_paging no_print">
						<a href="${pageMaker.makeSearch(1)}" class="direction">&lt;&lt;</a>
						<c:if test="${!pageMaker.prev}"><!-- 이전페이지가 존재하지 않는경우 -->
							<a href="${pageMaker.makeSearch(pageMaker.cri.page)}" class="direction">&lt;</a>
						</c:if>
						<c:if test="${pageMaker.prev}"><!-- 이전페이지가 존재하는 경우 -->
							<a href="${pageMaker.makeSearch(pageMaker.startPage-1)}" class="direction">&lt;</a>
						</c:if>
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=on':''}>${idx}</a>
						</c:forEach>
						<c:if test="${pageMaker.next}"><!-- 뒤에페이지가 존재하는경우 -->
							<a href="${pageMaker.makeSearch(pageMaker.endPage+1)}" class="direction">&gt;</a>
						</c:if>
						<c:if test="${!pageMaker.next}"><!-- 뒤에 페이지가 존재하지 않는 경우 -->
							<a href="${pageMaker.makeSearch(pageMaker.cri.page)}" class="direction">&gt;</a>
						</c:if>
						<a href="${pageMaker.makeSearch(pageMaker.finalPage+1)}" class="direction">&gt;&gt;</a>
					</div>	<!-- 페이징 끝 -->
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