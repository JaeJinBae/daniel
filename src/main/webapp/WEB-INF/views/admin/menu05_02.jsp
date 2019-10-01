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
	$("#btn_withdraw").click(function(){
		
		$(".sel_chkbox:checked").each(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/admin/menu04_02withdraw/"+$(this).val()+"/x",
				type:"get",
				contentType : "application/json; charset=UTF-8",
				dataType:"text",
				async:false,
				success:function(json){
					console.log(json);
				},
				error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
		location.href="${pageContext.request.contextPath}/admin/menu04_02";
	});
	
$("#btn_delete").click(function(){
		
		$(".sel_chkbox:checked").each(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/admin/menu04_02delete/"+$(this).val(),
				type:"get",
				contentType : "application/json; charset=UTF-8",
				dataType:"text",
				async:false,
				success:function(json){
					console.log(json);
				},
				error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
		location.href="${pageContext.request.contextPath}/admin/menu04_02";
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
				<h1>빠른상담</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>상담관리&nbsp;&gt;&nbsp;</li>
					<li>빠른상담</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div class=""><h2 style="font-size:20px;"></h2></div>
				<div class="list_area">
					<div class="list_box">
						<div class="board_top">
							<form name="search" method="post" action="">
								<div class="search_area">
									<input type="hidden" name="search" value="Y">
									<select name="select_key" id="select_key" class="search_sel">
										<option value="i_name|i_age|i_phone|i_kind|i_state|i_content|i_answer|i_memo">전체</option>
										<option value="i_name">이름</option><option value="i_phone">전화번호</option>
										<option value="i_kind">상담분야</option><option value="i_state">처리상태</option>
										<option value="i_content">문의내용</option><option value="i_answer">상담내용</option>
										<option value="i_memo">메모</option>
									</select>
									<input type="text" name="input_key" class="search_t_box" value="">
									<input type="button" name="submit_btn" value="검색" class="search_btn cursor">
								</div>
							</form>
						</div>
			
						<form name="inquire" id="inquire" method="post" action="">
							<table class="list_table">
								<colgroup>
									<col width="4%">
									<col width="4%">
									<col width="7%">
									<col width="9%">
									<col width="8%">
									<col width="13%">
									<col width="9%">
									<col width="5%">
									<col width="8%">
								</colgroup>
								<tr class="cont">
									<th><input type="checkbox" id="selectall"></th>
									<th>번호</th>
									<th>이름</th>
									<th>전화번호</th>
									<th>등록일</th>
									<th>처리상태</th>
									<th>유입경로</th>
									<th>답변일</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(list) ==0 }">
										<tr><td colspan="8">등록된 게시물이 없습니다.</td></tr>
									</c:when>
									<c:otherwise>
										<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
									        <c:forEach var="item" items="${list}">
												<tr class="cont">
													<td><input type="checkbox" name="seq_list[]" value="${item.no}"></td>
													<td>${num}</td>
													<td>
														<a href="${pageContext.request.contextPath}/admin/menu05_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.name}</a>
														<img src="${pageContext.request.contextPath}/resources/filedata/setting/20160111_EED6ADF963C23563.gif" class="vimg" alt="비밀글아이콘">
													</td>
													<td><a href="${pageContext.request.contextPath}/admin/menu05_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.phone}</a></td>
													<td>${item.regdate}</td>
													<td><a href="${pageContext.request.contextPath}/admin/menu05_02update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.state}</a></td>
													<td><a href="javascript:;" id="tooltip_2474" onclick="tooltip_it('2474')">보기</a></td>
													<td>${item.reply_date}</td>
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
							<button type="button" class="btn_gray" onclick="">전체 Excel저장</button>
							<button type="button" class="btn_gray" onclick="">Excel저장</button>
							<button type="button" class="btn_gray" onclick="">선택삭제</button>
						</p>
						<p class="btn_right">
							<%-- <button type="button" class="btn_black" onclick="location.href='${pageContext.request.contextPath}/admin/menu05_02register'">등록</button> --%>
						</p>
					</div>
			
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
					</div>
				</div><!-- list_area end -->
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->

</body>
</html>