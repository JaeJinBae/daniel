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
<style>
#updateRegisterWrap{
	width: 1000px;
	margin-bottom: 20px;
	border: 1px solid lightgray;
}
#formRegister{
	display:none;
}
#upadd_top_tab_wrap{
	width: 100%;
	background: #e9e9e9;
}
#upadd_top_tab_wrap > ul{
	width: 100%;
	overflow: hidden;
	padding: 5px 5px 0px 5px;
}
#upadd_top_tab_wrap > ul > li{
	background: #f6f6f6;
	float: left;
	padding: 7px 12px;
	margin-right: 3px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	cursor: pointer;
	border: 1px solid lightgray;
}
.active_upadd_top_tab{
	background: #007fff !important;
	color: #ffffff;
}
.form1{
	padding: 15px;
}
.formTableWrap{
	
}
.formTableWrap > table{
	border-collapse: collapse;
}
.formTableWrap > table tr > td{
	border: 1px solid lightgray;
	padding:10px;
}
.t_title{
	width: 100px;
	text-align: center;
}
.formTableWrap > table tr > td > input{
	width: 170px;
}
.upAddformTableBtnWrap{
	width: 100%;
	text-align: center;
	margin-top: 15px;
}
.upAddformTableBtnWrap > input, .upAddformTableBtnWrap > button{
	background: #f6f6f6;
	padding: 5px 10px;
	border: 1px solid lightgray;
	cursor: pointer;
}
</style>
<script>
$(function(){
	$.ajaxSetup({cache:false});
	
	$("#upadd_top_tab_wrap > ul > li").eq(0).addClass("active_upadd_top_tab");
	
	$("#upadd_top_tab_wrap > ul > li").click(function(){
		var idx = $(this).index();
		$("#upadd_top_tab_wrap > ul > li").removeClass("active_upadd_top_tab");
		$(this).addClass("active_upadd_top_tab");
		if(idx == 0){
			$("#formUpdate").css("display", "block");
			$("#formRegister").css("display", "none");
		}else if(idx == 1){
			$("#formRegister").css("display", "block");
			$("#formUpdate").css("display", "none");
		}
	});
	$("#formRegister").submit(function(){
		var depth = 0;
		var c1 = $("#formRegister > div > table tr > td > input[name='c1']").val();
		var c2 = $("#formRegister > div > table tr > td > input[name='c2']").val();
		var c3 = $("#formRegister > div > table tr > td > input[name='c3']").val();
		var c4 = $("#formRegister > div > table tr > td > input[name='c4']").val();
		
		if(c1.length > 1){
			depth++;
		}
		if(c2.length > 1){
			depth++;
		}
		if(c3.length > 1){
			depth++;
		}
		if(c4.length > 1){
			depth++;
		}
		$("#formRegister > div > table tr > td > input[name='c_depth']").val(depth);
	});
	
	$(".sel_chk_box").click(function(){
		var c1 = $(this).parent().find("input[name='c1']").val();
		var c2 = $(this).parent().find("input[name='c2']").val();
		var c3 = $(this).parent().find("input[name='c3']").val();
		var c4 = $(this).parent().find("input[name='c4']").val();
		
		
		$("#formUpdate > div > table tr > td > input[name='no']").val(no);
		$("#formUpdate > div > table tr > td > input[name='c1']").val(c1);
		$("#formUpdate > div > table tr > td > input[name='c2']").val(c2);
		$("#formUpdate > div > table tr > td > input[name='c3']").val(c3);
		$("#formUpdate > div > table tr > td > input[name='c4']").val(c4);
		$("#formUpdate > div > table tr > td > input[name='c_depth']").val();
		$("#formUpdate > div > table tr > td > input[name='']").val();
		$("#formUpdate > div > table tr > td > input[name='']").val();
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
				<h1>시술 카테고리 관리</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 관리&nbsp;&gt;&nbsp;</li>
					<li>시술 카테고리 관리</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<div id="updateRegisterWrap">
					<div id="upadd_top_tab_wrap"><!-- 수정, 추가 선택 버튼 시작 -->
						<ul>
							<li>시술수정</li>
							<li>시술추가</li>
						</ul>
					</div><!-- 수정, 추가 선택 버튼 끝 -->
					<form id="formUpdate" class="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu02_02udpate">
						<div class="formTableWrap"><!-- 내용입력 시작 -->
							<table>
								<tr>
									<td class="t_title">분류</td>
									<td>
										<input type="hidden" name="no" value="">
										<input type="text" name="c1" value="" placeholder="분류1"> &nbsp;&gt;&nbsp;
										<input type="text" name="c2" value="" placeholder="분류2"> &nbsp;&gt;&nbsp;
										<input type="text" name="c3" value="" placeholder="분류3"> &nbsp;&gt;&nbsp;
										<input type="text" name="c4" value="" placeholder="분류4">
										<input type="hidden" name="c_depth" value="0">
									</td>
								</tr>
								<tr>
									<td class="t_title">시술가격</td>
									<td><input type="text" name="price" value="">원</td>
								</tr>
								<tr>
									<td class="t_title">사용유무</td>
									<td>
										<label><input type="radio" name="use_state" value="o">사용</label>&nbsp;&nbsp;
										<label><input type="radio" name="use_state" value="x">미사용</label>
									</td>
								</tr>
							</table>
						</div><!-- 내용입력 끝 -->
						<div class="upAddformTableBtnWrap"><!-- 수정, 삭제, 추가 버튼 시작 -->
							<input type="submit" value="정보 수정">
							<button>정보 삭제</button>
							<button>취소</button>
						</div><!-- 수정, 삭제, 추가 버튼 끝 -->
					</form>
					<form id="formRegister" class="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu02_02register">
						<div class="formTableWrap"><!-- 내용입력 시작 -->
							<table>
								<tr>
									<td class="t_title">분류</td>
									<td>
										<input type="text" name="c1" value="" placeholder="분류1"> &nbsp;&gt;&nbsp;
										<input type="text" name="c2" value="" placeholder="분류2"> &nbsp;&gt;&nbsp;
										<input type="text" name="c3" value="" placeholder="분류3"> &nbsp;&gt;&nbsp;
										<input type="text" name="c4" value="" placeholder="분류4">
										<input type="hidden" name="c_depth" value="0">
									</td>
								</tr>
								<tr>
									<td class="t_title">시술가격</td>
									<td><input type="text" name="price" value="">원</td>
								</tr>
								<tr>
									<td class="t_title">사용유무</td>
									<td>
										<label><input type="radio" name="use_state" value="o">사용</label>&nbsp;&nbsp;
										<label><input type="radio" name="use_state" value="x">미사용</label>
									</td>
								</tr>
							</table>
						</div><!-- 내용입력 끝 -->
						<div class="upAddformTableBtnWrap"><!-- 수정, 삭제, 추가 버튼 시작 -->
							<input type="submit" value="시술 추가">
						</div><!-- 수정, 삭제, 추가 버튼 끝 -->
					</form>
				</div><!-- #updateRegisterWrap end -->
				<div>
					<table class="list_table">
						<colgroup>
							<col width="3%">
							<col width="20%">
	                        <col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="10%">
						</colgroup>
						<tr class="cont">
							<th><input type="checkbox" id="selectall"></th>
							<th>분류1</th>
	                        <th>분류2</th>
							<th>분류3</th>
							<th>분류4</th>
							<th>가격</th>
						</tr>
						<c:choose>
							<c:when test="${fn:length(list) ==0 }">
								<tr><td colspan="6">등록된 게시물이 없습니다.</td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${list}">
									<tr class="cont">
										<td>
											<input class="sel_chk_box" type="radio" name="sel_chk" value="${item.no}">
											<input type="hidden" name="c1" value="${item.c1}">
											<input type="hidden" name="c2" value="${item.c2}">
											<input type="hidden" name="c3" value="${item.c3}">
											<input type="hidden" name="c4" value="${item.c4}">
											<input type="hidden" name="c_depth" value="${item.c_depth}">
											<input type="hidden" name="price" value="${item.price}">
											<input type="hidden" name="use_state" value="${item.use_state}">
										</td>
										<td>${item.c1}</td>
										<td>${item.c2}</td>
										<td>${item.c3}</td>
										<td>${item.c4}</td>
										<td><fmt:formatNumber value="${item.price}" pattern="#,###.##"/>원</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
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