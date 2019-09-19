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
	var counseling = "${item.counseling}";
	$("#r_counsel > option[value='"+counseling+"']").prop("selected", true);
	
	$("#delBtn").click(function(){
		var no = $("input[name='no']").val();
		
		$.ajax({
			url:"${pageContext.request.contextPath}/admin/menu02_01delete/"+no,
			type:"get",
			dataType:"text",
			async:false,
			success:function(json){
				location.href="${pageContext.request.contextPath}/admin/menu02_01";
			} 
		});
		
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
				<h1>시술 예약 목록</h1>

				<ul class="navi_area">
					<li>관리자메인&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 관리&nbsp;&gt;&nbsp;</li>
					<li>시술 예약 목록</li>
				</ul>
			</div>
			
			<div class="main_bottom_area">
				<form name="reserve" id="form1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/menu02_01update${pageMaker.makeSearch(pageMaker.cri.page)}">
					<input type="hidden" name="no" value="${item.no}"> 
					<div class="write_area">
						<div class="write_box">
							<table class="write_table">
								<colgroup>
									<col width="11%">
									<col width="*">
								</colgroup>
								<tr class="cont">
									<td class="title">시술목록</td>
									<td>${item.clinic_list}</td>
								</tr>
								<tr class="cont">
									<td class="title">시술금액</td>
									<td><input type="hidden" name="price" value="60000">${item.price}</td>
								</tr>
								<tr class="cont">
									<td class="title">상담여부</td>
									<td>
										<select name="counseling" id="r_counsel" class="search_sel">
											<option value="o">상담 요망</option>
											<option value="x">상담 불필요</option>
										</select>
									</td>
								</tr>
			                    <tr class="cont">
			                        <td class="title">예약일자</td>
			                        <td><input type="hidden" name="res_date" value="${item.res_date}">${item.res_date}</td>
			                    </tr>
			                    <tr class="cont">
			                        <td class="title">예약시간</td>
			                        <td><input type="hidden" name="res_time" value="${item.res_time }">${item.res_time}</td>
			                    </tr>
								<tr class="cont">
									<td class="title">성명</td>
									<td><input type="text" class="w_form_s" name="name" id="r_name" value="${item.name}"></td>
								</tr>
								<tr class="cont">
									<td class="title">휴대전화</td>
									<td><input type="text" class="w_form_m" name="phone" id="r_phone" value="${item.phone}"></td>
								</tr>
								<tr class="cont">
									<td class="title">이메일</td>
									<td><input type="text" class="w_form_m" name="email" id="r_email" value="${item.email}"></td>
								</tr>
								<tr class="cont">
									<td class="title">메모</td>
									<td><textarea name="memo" id="r_memo" cols="120" rows="8" class="w_form_txtArea">${item.memo }</textarea></td>
								</tr>
								<tr class="cont">
									<td class="title">예약상태</td>
									<td>
										<select name="res_state" id="r_state" class="search_sel">
											<option value="o">예약완료</option>
											<option value="x">예약취소</option>
										</select>
									</td>
								</tr>	
							</table>
						</div>
				
						<div class="btn_area">
							<p class="btn_left">
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_01'">리스트</button>
							</p>
							<p class="btn_right">
								<input type="submit" class="btn_black" value="수정">&nbsp;
								<button type="button" class="btn_red" id="delBtn">삭제</button>
								<button type="button" class="btn_gray" onclick="location.href='${pageContext.request.contextPath}/admin/menu02_01'">취소</button>
							</p>
						</div>
				
					</div><!-- write_area end -->
				</form>
			</div><!-- main_bottom_area end -->
			
		</div><!-- admin_right 끝 -->
    </div><!-- container 끝 -->

    <div id="admin_footer">
        <div class="f_contents nanum_n">COPYRIGHT ⓒ <span class="txt_blue_b nanum_b">다니엘성형외과의원 진료과목 피부과</span> ALL RIGHT RESERVED</div>
    </div>
</div><!-- wrap 끝 -->


</body>
</html>